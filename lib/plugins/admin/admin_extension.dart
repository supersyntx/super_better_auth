import '../../core/api/better_auth_client.dart';
import '../../core/super_better_auth.dart';
import 'admin_better_auth.dart';

extension AdminBetterAuthExtension on SuperBetterAuthClient {
  AdminBetterAuth get admin => AdminBetterAuth(
    SuperBetterAuth.dioClient,
    baseUrl: SuperBetterAuth.baseUrl,
  );
}
