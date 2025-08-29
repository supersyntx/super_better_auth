// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_member_role_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMemberRoleRequest _$UpdateMemberRoleRequestFromJson(
  Map<String, dynamic> json,
) => UpdateMemberRoleRequest(
  role: json['role'] as String,
  memberId: json['memberId'] as String,
  organizationId: json['organizationId'] as String?,
);

Map<String, dynamic> _$UpdateMemberRoleRequestToJson(
  UpdateMemberRoleRequest instance,
) => <String, dynamic>{
  'role': instance.role,
  'memberId': instance.memberId,
  'organizationId': instance.organizationId,
};
