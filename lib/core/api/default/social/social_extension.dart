import '../../../super_better_auth.dart';
import '../../better_auth_client.dart';
import 'social_better_auth.dart';

extension SocialBetterAuthExtension on SuperBetterAuthClient {
  SocialBetterAuth get social => SocialBetterAuth(
    SuperBetterAuth.dioClient,
    baseUrl: SuperBetterAuth.baseUrl,
  );
}
