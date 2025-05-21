import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_body.freezed.dart';
part 'sign_up_body.g.dart';


@freezed
abstract class SignUpBody with _$SignUpBody {
  const factory SignUpBody({
    required String name,
    required String email,
    required String password,
    String? callbackURL,
}) = _SignUpBody;

  factory SignUpBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpBodyFromJson(json);
}
