import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/user/user.dart';

part 'sign_up_response.freezed.dart';

part 'sign_up_response.g.dart';

@freezed
abstract class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    String? token,
    required User user,
    @Default(true) bool status,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
