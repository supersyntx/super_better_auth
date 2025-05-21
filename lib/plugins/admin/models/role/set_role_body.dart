import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_role_body.freezed.dart';

part 'set_role_body.g.dart';

@freezed
abstract class SetRoleBody with _$SetRoleBody {
  const factory SetRoleBody({required String userId, required String role}) =
      _SetRoleBody;

  factory SetRoleBody.fromJson(Map<String, dynamic> json) =>
      _$SetRoleBodyFromJson(json);
}
