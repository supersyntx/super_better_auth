import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_body.freezed.dart';
part 'delete_user_body.g.dart';

@freezed
abstract class DeleteUserBody with _$DeleteUserBody {
  const factory DeleteUserBody({
    String? callbackURL,
    String? password,
    String? token,
}) = _DeleteUserBody;
  factory DeleteUserBody.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserBodyFromJson(json);
}
