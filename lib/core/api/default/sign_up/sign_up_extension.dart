import '../../../flutter_better_auth.dart';
import '../../better_auth_client.dart';
import 'sign_up_better_auth.dart';

extension SignUpBetterAuthExtension on BetterAuthClient {
  SignUpBetterAuth get signUp => SignUpBetterAuth(
    FlutterBetterAuth.dioClient,
    baseUrl: FlutterBetterAuth.baseUrl,
  );
}
