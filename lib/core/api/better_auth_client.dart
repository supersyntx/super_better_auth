import 'package:dio/dio.dart';
import 'package:flutter_better_auth/core/api/models/common/change_email/change_email_body.dart';
import 'package:flutter_better_auth/core/api/models/common/forgot_password/forgot_password_body.dart';
import 'package:flutter_better_auth/core/api/models/common/reset_password/reset_password_body.dart';
import 'package:flutter_better_auth/core/api/models/common/send_verification_email/verification_email_body.dart';
import 'package:flutter_better_auth/core/api/models/common/verify_email/verify_email_response.dart';
import 'package:flutter_better_auth/core/api/models/sign_up/sign_up_response/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';

import 'adapter.dart';
import 'models/result/result.dart';
import 'models/result/status_response.dart';
import 'models/session/session_response.dart';
import 'models/sign_in/email/sign_in_email_body.dart';
import 'models/sign_in/email/sign_in_email_response.dart';
import 'models/sign_in/social/sign_in_social_body.dart';
import 'models/sign_in/social/sign_in_social_response.dart';
import 'models/sign_up/sign_up_body/sign_up_body.dart';

part 'better_auth_client.g.dart';

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthClient {
  factory BetterAuthClient(Dio dio, {String? baseUrl}) = _BetterAuthClient;

  @POST('/sign-in/social')
  Future<Result<SignInSocialResponse>> signInWithSocial({
    @Body(nullToAbsent: true) required SignInSocialBody body,
  });

  @GET('/get-session')
  Future<Result<SessionResponse>> getSession();

  @POST('/sign-out')
  Future<Result<StatusResponse>> signOut({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST('/sign-up/email')
  Future<Result<SignUpResponse>> signUpEmail({
    @Body(nullToAbsent: true) required SignUpBody body,
  });

  @POST('/sign-in/email')
  Future<Result<SignInEmailResponse>> signInWithEmail({
    @Body(nullToAbsent: true) required SignInEmailBody body,
  });

  @POST('/forgot-password')
  Future<Result<StatusResponse>> forgotPassword({
    @Body(nullToAbsent: true) required ForgotPasswordBody body,
  });

  @POST('/reset-password')
  Future<Result<StatusResponse>> resetPassword({
    @Body(nullToAbsent: true) required ResetPasswordBody body,
  });

  @GET('/verify-email')
  Future<Result<VerifyEmailResponse>> verifyEmail({
    @Query("token") required String token,
    @Query("callbackURL") String? callbackURL,
  });

  @POST('/send-verification-email')
  Future<Result<StatusResponse>> sendVerificationEmail({
    @Body() required VerificationEmailBody body,
  });

  @POST('/change-email')
  Future<Result<StatusResponse>> changeEmail({
    @Body() required ChangeEmailBody body,
  });
}
