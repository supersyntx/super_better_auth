import 'package:dio/dio.dart';
import 'package:flutter_better_auth/core/api/models/result/better_error.dart';
import 'package:retrofit/retrofit.dart';

import '../utils/logger.dart';
import 'models/result/result.dart';

class BetterAuthCallAdapter<T>
    extends CallAdapter<Future<HttpResponse<T>>, Future<Result<T>>> {
  @override
  Future<Result<T>> adapt(Future<HttpResponse<T>> Function() call) async {
    try {
      final httpResponse = await call();
      final data = httpResponse.data;
      return Result<T>.ok(data);
    } on DioException catch (e, s) {
      final res = e.response;
      final status = res?.statusCode;
      final body = res?.data ?? {'message': e.message};
      logger.e("DioException", error: e, stackTrace: s);
      logger.e("Status: $status, Body: $body");
      return Result.err(BetterError.fromJson(body));
    } catch (e, s) {
      logger.e("Unknown Error", error: e, stackTrace: s);
      return Result.err(BetterError(message: e.toString()));
    }
  }
}
