import '../../core/api/better_auth_client.dart';
import '../../core/super_better_auth.dart';
import 'jwt_better_auth.dart';

extension JwtBetterAuthExtension on SuperBetterAuthClient {
  JwtBetterAuth get jwt => JwtBetterAuth(
    SuperBetterAuth.dioClient,
    baseUrl: SuperBetterAuth.baseUrl,
  );
}
