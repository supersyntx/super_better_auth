import 'package:flutter_better_auth/core/api/default/social/social_better_auth.dart';

import '../../../../flutter_better_auth.dart';
import '../../better_auth_client.dart';

extension SocialBetterAuthExtension on BetterAuthClient {
  SocialBetterAuth get social => SocialBetterAuth(
    FlutterBetterAuth.dioClient,
    baseUrl: FlutterBetterAuth.baseUrl,
  );
}
