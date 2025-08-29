import 'package:json_annotation/json_annotation.dart';

part 'update_member_role_request.g.dart';

@JsonSerializable()
class UpdateMemberRoleRequest {
  final String role;
  final String memberId;
  final String? organizationId;

  const UpdateMemberRoleRequest({
    required this.role,
    required this.memberId,
    this.organizationId,
  });

  factory UpdateMemberRoleRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMemberRoleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateMemberRoleRequestToJson(this);
}
