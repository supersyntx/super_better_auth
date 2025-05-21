import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_phone_password_body.freezed.dart';
part 'reset_phone_password_body.g.dart';

@freezed
abstract class ResetPhonePasswordBody with _$ResetPhonePasswordBody {
  const factory ResetPhonePasswordBody() = _ResetPhonePasswordBody;

  factory ResetPhonePasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPhonePasswordBodyFromJson(json);
}
