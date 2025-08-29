import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:super_better_auth/core/api/better_auth_client.dart';
import 'package:super_better_auth/core/storage/custom_persist_cookie_jar.dart';
import 'package:super_better_auth/core/storage/hive_storage.dart';
import 'package:super_better_auth/core/storage/storage.dart';

import 'api/interceptor.dart';
import 'storage/memory_storage.dart';

class SuperBetterAuth {
  static final SuperBetterAuth _instance = SuperBetterAuth._internal();
  late final SuperBetterAuthClient _client;
  static bool _initialized = false;

  static late String baseUrl;
  static late final Dio dioClient;
  static late final StorageInterface? storage;

  SuperBetterAuth._internal() {
    _client = SuperBetterAuthClient(dioClient, baseUrl: baseUrl);
  }

  static Future<void> initialize({
    required String url,
    Dio? dio,
    StorageInterface? store,
  }) async {
    if (_initialized) return;
    baseUrl = url;
    if (store == null && !kIsWeb) {
      await HiveStorage.init();
      storage = HiveStorage();
    } else {
      storage = store;
    }
    dioClient =
        dio ??
        Dio(
          BaseOptions(
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json',
              HttpHeaders.userAgentHeader: 'SuperBetterAuth/1.0.0',
              'flutter-origin': 'flutter://',
              'expo-origin': 'exp://',
              'x-skip-oauth-proxy': true,
            },
            validateStatus: (status) => status != null && status < 300,
          ),
        );
    final cookieJar = CustomPersistCookieJar(
      store: storage,
      storage: MemoryStorage(),
    );
    dioClient.interceptors.add(CookieManager(cookieJar));
    dioClient.interceptors.add(RemoveNullsInterceptor());
    _initialized = true;
  }

  static SuperBetterAuthClient get client {
    assert(
      _initialized,
      'SuperBetterAuth not initialized. Call initialize() first.',
    );
    return _instance._client;
  }
}
