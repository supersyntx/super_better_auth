import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../adapter.dart';
import '../../models/result/result.dart';
import '../../models/result/status_response.dart';
import '../../models/session/session_response.dart';
import 'models/callback/callback_body.dart';
import 'models/link/social_link_body.dart';
import 'models/link/social_link_response.dart';
import 'models/list_account/social_account.dart';
import 'models/token/token_body.dart';
import 'models/token/token_response.dart';
import 'models/unlink/unlink_account_body.dart';

part 'social_better_auth.g.dart';

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class SocialBetterAuth {
  factory SocialBetterAuth(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) = _SocialBetterAuth;

  @POST('/callback/{id}')
  Future<Result<SessionResponse >> callback({
    @Path('id') required String provider,
    @Body(nullToAbsent: true)  CallbackBody body = const CallbackBody(),
  });

  @POST('/link-social')
  Future<Result<SocialLinkResponse>> link({
    @Body(nullToAbsent: true) required SocialLinkBody body,
  });

  @GET('/list-accounts')
  Future<Result<List<SocialAccount>>> listAccounts();

  @POST('/unlink-account')
  Future<Result<StatusResponse>> unlink({
    @Body(nullToAbsent: true) required UnlinkAccountBody body,
  });

  @POST('/refresh-token')
  Future<Result<TokenResponse>> refreshToken({
    @Body(nullToAbsent: true) required TokenBody body,
  });

  @POST('/get-access-token')
  Future<Result<TokenResponse>> getAccessToken({
    @Body(nullToAbsent: true) required TokenBody body,
  });
}
