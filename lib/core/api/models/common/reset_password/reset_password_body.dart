import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_body.freezed.dart';
part 'reset_password_body.g.dart';

@freezed
abstract class ResetPasswordBody with _$ResetPasswordBody {
  const factory ResetPasswordBody({
    required String newPassword,
    String? token,
  }) = _ResetPasswordBody;

  factory ResetPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordBodyFromJson(json);
}
