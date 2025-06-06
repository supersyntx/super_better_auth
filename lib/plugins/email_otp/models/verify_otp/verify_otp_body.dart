import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_body.freezed.dart';
part 'verify_otp_body.g.dart';

@freezed
abstract class VerifyOtpBody with _$VerifyOtpBody {
  const factory VerifyOtpBody({required String email, required String otp}) =
      _VerifyOtpBody;

  factory VerifyOtpBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpBodyFromJson(json);
}
