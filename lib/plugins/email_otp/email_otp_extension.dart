import '../../core/api/better_auth_client.dart';
import '../../core/super_better_auth.dart';
import 'email_otp_better_auth.dart';

extension EmailAuthBetterAuthExtension on SuperBetterAuthClient {
  EmailOtpBetterAuth get emailOtp => EmailOtpBetterAuth(
    SuperBetterAuth.dioClient,
    baseUrl: SuperBetterAuth.baseUrl,
  );
}
