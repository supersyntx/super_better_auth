import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_otp.freezed.dart';

part 'password_otp.g.dart';

@freezed
abstract class PasswordOtpBody with _$PasswordOtpBody {
  const factory PasswordOtpBody({
    required String email,
    required String otp,
    required String password,
  }) = _PasswordOtpBody;

  factory PasswordOtpBody.fromJson(Map<String, dynamic> json) =>
      _$PasswordOtpBodyFromJson(json);
}
