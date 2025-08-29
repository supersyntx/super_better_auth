import 'package:super_better_auth/core/api/better_auth_client.dart';
import 'package:super_better_auth/core/super_better_auth.dart';
import 'api/organization_client.dart';

extension OrganizationExtension on SuperBetterAuthClient {
  OrganizationClient get organization => OrganizationClient(
    SuperBetterAuth.dioClient,
    baseUrl: SuperBetterAuth.baseUrl,
  );
}
