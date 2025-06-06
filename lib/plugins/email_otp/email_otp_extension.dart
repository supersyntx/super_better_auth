import '../../../../flutter_better_auth.dart';
import '../../core/api/better_auth_client.dart';
import 'email_otp_better_auth.dart';

extension EmailAuthBetterAuthExtension on BetterAuthClient {
  EmailOtpBetterAuth get emailOtp => EmailOtpBetterAuth(
    FlutterBetterAuth.dioClient,
    baseUrl: FlutterBetterAuth.baseUrl,
  );
}
