import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart';
import 'package:flutter_better_auth/core/storage/custom_persist_cookie_jar.dart';
import 'package:flutter_better_auth/core/storage/hive_storage.dart';
import 'package:flutter_better_auth/core/storage/storage.dart';
import 'package:path_provider/path_provider.dart';

import 'core/api/interceptor.dart';

class FlutterBetterAuth {
  static final FlutterBetterAuth _instance = FlutterBetterAuth._internal();
  late final BetterAuthClient client;
  static bool _initialized = false;

  static late String _baseUrl;
  static late final Dio _dio;
  static late final StorageInterface _storage;

  FlutterBetterAuth._internal() {
    client = BetterAuthClient(_dio, baseUrl: _baseUrl);
  }

  static Future<void> initialize({
    required String baseUrl,
    Dio? dio,
    StorageInterface? storage,
  }) async {
    if (_initialized) return;
    _baseUrl = baseUrl;

    if (storage == null) {
      await HiveStorage.init();
      _storage = HiveStorage();
    } else {
      _storage = storage;
    }
    _dio =
        dio ??
        Dio(
          BaseOptions(
            headers: {HttpHeaders.contentTypeHeader: 'application/json'},
            validateStatus: (status) => status != null && status <= 500,
          ),
        );
    final appDir = await getApplicationDocumentsDirectory();
    final cookieJar = CustomPersistCookieJar(
      store: _storage,
      storage: FileStorage("${appDir.path}/.cookies"),
    );
    _dio.interceptors.add(CookieManager(cookieJar));
    // _dio.interceptors.add(RemoveNullsInterceptor());
    _initialized = true;
  }

  static BetterAuthClient getClient() {
    assert(
      _initialized,
      'FlutterBetterAuth not initialized. Call initialize() first.',
    );
    return _instance.client;
  }
}
