import 'package:dio/dio.dart';
import 'package:flutter_better_auth/core/api/default/social/models/token/token_body.dart';
import 'package:flutter_better_auth/core/api/default/social/models/token/token_response.dart';
import 'package:flutter_better_auth/core/api/default/social/models/unlink/unlink_account_body.dart';
import 'package:flutter_better_auth/core/api/models/result/status_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../adapter.dart';
import '../../models/result/result.dart';
import 'models/link/social_link_body.dart';
import 'models/link/social_link_response.dart';
import 'models/list_account/social_account.dart';

part 'social_better_auth.g.dart';

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class SocialBetterAuth {
  factory SocialBetterAuth(Dio dio, {String? baseUrl}) = _SocialBetterAuth;

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
