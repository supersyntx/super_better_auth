import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_email_body.freezed.dart';

part 'change_email_body.g.dart';

@freezed
abstract class ChangeEmailBody with _$ChangeEmailBody {
  const factory ChangeEmailBody({
    required String newEmail,
    String? callbackURL,
  }) = _ChangeEmailBody;

  factory ChangeEmailBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailBodyFromJson(json);
}
