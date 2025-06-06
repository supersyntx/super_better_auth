import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart';
import 'package:flutter_better_auth/core/storage/custom_persist_cookie_jar.dart';
import 'package:flutter_better_auth/core/storage/hive_storage.dart';
import 'package:flutter_better_auth/core/storage/storage.dart';

import 'api/interceptor.dart';
import 'storage/memory_storage.dart';

class FlutterBetterAuth {
  static final FlutterBetterAuth _instance = FlutterBetterAuth._internal();
  late final BetterAuthClient _client;
  static bool _initialized = false;

  static late String baseUrl;
  static late final Dio dioClient;
  static late final StorageInterface _storage;

  FlutterBetterAuth._internal() {
    _client = BetterAuthClient(dioClient, baseUrl: baseUrl);
  }

  static Future<void> initialize({
    required String url,
    Dio? dio,
    StorageInterface? storage,
  }) async {
    if (_initialized) return;
    baseUrl = url;
    if (storage == null) {
      await HiveStorage.init();
      _storage = HiveStorage();
    } else {
      _storage = storage;
    }
    dioClient =
        dio ??
        Dio(
          BaseOptions(
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json',
              HttpHeaders.userAgentHeader: 'FlutterBetterAuth/1.0.0',
            },
            validateStatus: (status) => status != null && status < 300,
          ),
        );
    final cookieJar = CustomPersistCookieJar(
      store: _storage,
      storage: MemoryStorage(),
    );
    dioClient.interceptors.add(CookieManager(cookieJar));
    dioClient.interceptors.add(RemoveNullsInterceptor());
    _initialized = true;
  }

  static BetterAuthClient get client {
    assert(
      _initialized,
      'FlutterBetterAuth not initialized. Call initialize() first.',
    );
    return _instance._client;
  }
}
