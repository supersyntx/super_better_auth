import '../../../super_better_auth.dart';
import '../../better_auth_client.dart';
import 'sign_up_better_auth.dart';

extension SignUpBetterAuthExtension on SuperBetterAuthClient {
  SignUpBetterAuth get signUp => SignUpBetterAuth(
    SuperBetterAuth.dioClient,
    baseUrl: SuperBetterAuth.baseUrl,
  );
}
