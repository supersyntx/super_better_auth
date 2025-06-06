import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_user_password_body.freezed.dart';
part 'set_user_password_body.g.dart';

@freezed
abstract class SetUserPasswordBody with _$SetUserPasswordBody {
  const factory SetUserPasswordBody({
    required String newPassword,
    required String userId,
  }) = _SetUserPasswordBody;

  factory SetUserPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$SetUserPasswordBodyFromJson(json);
}
