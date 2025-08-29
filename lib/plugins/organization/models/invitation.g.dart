// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invitation _$InvitationFromJson(Map<String, dynamic> json) => Invitation(
  id: json['id'] as String,
  email: json['email'] as String,
  inviterId: json['inviterId'] as String,
  organizationId: json['organizationId'] as String,
  role: json['role'] as String,
  status: json['status'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  teamId: json['teamId'] as String?,
  inviter:
      json['inviter'] == null
          ? null
          : User.fromJson(json['inviter'] as Map<String, dynamic>),
  organization:
      json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InvitationToJson(Invitation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'inviterId': instance.inviterId,
      'organizationId': instance.organizationId,
      'role': instance.role,
      'status': instance.status,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'teamId': instance.teamId,
      'inviter': instance.inviter?.toJson(),
      'organization': instance.organization?.toJson(),
    };
