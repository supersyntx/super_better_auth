import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_email_body.freezed.dart';
part 'verification_email_body.g.dart';

@freezed
abstract class VerificationEmailBody with _$VerificationEmailBody {
  const factory VerificationEmailBody({
    required String email,
    String? callbackURL,
  }) = _VerificationEmailBody;
  factory VerificationEmailBody.fromJson(Map<String, dynamic> json) =>
      _$VerificationEmailBodyFromJson(json);
}
