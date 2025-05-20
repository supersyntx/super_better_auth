import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_body.freezed.dart';
part 'change_password_body.g.dart';

@freezed
abstract class ChangePasswordBody with _$ChangePasswordBody {
  const factory ChangePasswordBody({
    required String newPassword,
    required String currentPassword,
    String? revokeOtherSessions,
}) = _ChangePasswordBody;
  factory ChangePasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordBodyFromJson(json);
}
