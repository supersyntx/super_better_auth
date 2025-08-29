import '../../../../super_better_auth.dart';
import '../../core/api/better_auth_client.dart';
import 'phone_better_auth.dart';

extension PhoneBetterAuthExtension on SuperBetterAuthClient {
  PhoneBetterAuth get phone => PhoneBetterAuth(
    SuperBetterAuth.dioClient,
    baseUrl: SuperBetterAuth.baseUrl,
  );
}
