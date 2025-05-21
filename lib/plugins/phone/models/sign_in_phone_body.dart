import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_phone_body.freezed.dart';
part 'sign_in_phone_body.g.dart';

@freezed
abstract class SignInPhoneBody with _$SignInPhoneBody {
  const factory SignInPhoneBody() = _SignInPhoneBody;

  factory SignInPhoneBody.fromJson(Map<String, dynamic> json) =>
      _$SignInPhoneBodyFromJson(json);
}
