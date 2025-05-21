import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_username_body.freezed.dart';
part 'sign_in_username_body.g.dart';

@freezed
abstract class SignInUsernameBody with _$SignInUsernameBody {
  const factory SignInUsernameBody({
    required String username,
    required String password,
    String? rememberMe,
}) = _SignInUsernameBody;

  factory SignInUsernameBody.fromJson(Map<String, dynamic> json) =>
      _$SignInUsernameBodyFromJson(json);
}
