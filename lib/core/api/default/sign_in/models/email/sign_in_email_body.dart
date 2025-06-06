import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_email_body.freezed.dart';
part 'sign_in_email_body.g.dart';

@freezed
abstract class SignInEmailBody with _$SignInEmailBody {
  const factory SignInEmailBody({
    required String email,
    required String password,
    String? callbackURL,
    String? rememberMe,
  }) = _SignInEmailBody;

  factory SignInEmailBody.fromJson(Map<String, dynamic> json) =>
      _$SignInEmailBodyFromJson(json);
}
