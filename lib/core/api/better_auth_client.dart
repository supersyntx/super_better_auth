import 'package:dio/dio.dart';
import 'package:super_better_auth/core/models/session/session.dart';
import 'package:retrofit/retrofit.dart';

import 'adapter.dart';
import 'default/sign_up/models/sign_up_response/sign_up_response.dart';
import 'models/common/sign_out/sign_out_response.dart';
import 'models/common/verify_email/verify_email_response.dart';
import 'models/result/result.dart';
import 'models/result/status_response.dart';
import 'models/result/success_response.dart';
import 'models/session/session_response.dart';

part 'better_auth_client.g.dart';

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class SuperBetterAuthClient {
  factory SuperBetterAuthClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _SuperBetterAuthClient;

  @GET('/get-session')
  Future<Result<SessionResponse>> getSession();

  @POST('/sign-out')
  Future<Result<SignOutResponse>> signOut({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST('/forget-password')
  Future<Result<StatusResponse>> forgotPassword({
    @BodyExtra('email') required String email,
    @BodyExtra('redirectTo') String? redirectTo,
  });

  @POST('/reset-password')
  Future<Result<StatusResponse>> resetPassword({
    @BodyExtra('newPassword') required String newPassword,
    @BodyExtra('token') String? token,
  });

  @GET('/verify-email')
  Future<Result<VerifyEmailResponse>> verifyEmail({
    @Query("token") required String token,
    @Query("callbackURL") String? callbackURL,
  });

  @POST('/send-verification-email')
  Future<Result<StatusResponse>> sendVerificationEmail({
    @BodyExtra('email') required String email,
    @BodyExtra('callbackURL') String? callbackURL,
  });

  @POST('/change-email')
  Future<Result<StatusResponse>> changeEmail({
    @BodyExtra('newEmail') required String newEmail,
    @BodyExtra('callbackURL') String? callbackURL,
  });

  @POST('/change-password')
  Future<Result<SignUpResponse>> changePassword({
    @BodyExtra('newPassword') required String newPassword,
    @BodyExtra('currentPassword') required String currentPassword,
    @BodyExtra('revokeOtherSessions') String? revokeOtherSessions,
  });

  @POST('/update-user')
  Future<Result<StatusResponse>> updateUser({
    @BodyExtra('name') String? name,
    @BodyExtra('image') String? image,
  });

  @POST('/delete-user')
  Future<Result<SuccessResponse>> deleteUser({
    @BodyExtra('callbackURL') String? callbackURL,
    @BodyExtra('password') String? password,
    @BodyExtra('token') String? token,
  });

  @GET('/list-sessions')
  Future<Result<List<Session>>> listSessions();

  @POST('/revoke-session')
  Future<Result<StatusResponse>> revokeSession({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST('/revoke-sessions')
  Future<Result<StatusResponse>> revokeSessions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST('/revoke-other-sessions')
  Future<Result<StatusResponse>> revokeOtherSessions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });
}
