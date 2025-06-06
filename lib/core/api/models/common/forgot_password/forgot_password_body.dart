import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_body.freezed.dart';
part 'forgot_password_body.g.dart';

@freezed
abstract class ForgotPasswordBody with _$ForgotPasswordBody {
  const factory ForgotPasswordBody({
    required String email,
    String? redirectTo,
  }) = _ForgotPasswordBody;

  factory ForgotPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordBodyFromJson(json);
}
