import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/api/adapter.dart';
import '../../core/api/models/result/result.dart';
import 'models/jwt_key_response/jwt_key_response.dart';
import 'models/token_response/token_response.dart';

part 'jwt_better_auth.g.dart';

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class JwtBetterAuth {
  factory JwtBetterAuth(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _JwtBetterAuth;

  @GET('/jwks')
  Future<Result<JwtKeyResponse>> jwks();

  @GET('/token')
  Future<Result<JwtTokenResponse>> token();
}
