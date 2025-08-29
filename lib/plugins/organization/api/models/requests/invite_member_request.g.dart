// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_member_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteMemberRequest _$InviteMemberRequestFromJson(Map<String, dynamic> json) =>
    InviteMemberRequest(
      email: json['email'] as String,
      role: json['role'] as String,
      organizationId: json['organizationId'] as String?,
      resend: json['resend'] as bool?,
      teamId: json['teamId'] as String?,
    );

Map<String, dynamic> _$InviteMemberRequestToJson(
  InviteMemberRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'role': instance.role,
  'organizationId': instance.organizationId,
  'resend': instance.resend,
  'teamId': instance.teamId,
};
