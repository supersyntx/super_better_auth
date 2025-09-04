// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationResponse _$OrganizationResponseFromJson(
  Map<String, dynamic> json,
) => OrganizationResponse(
  organization: Organization.fromJson(
    json['organization'] as Map<String, dynamic>,
  ),
  member:
      json['member'] == null
          ? null
          : Member.fromJson(json['member'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrganizationResponseToJson(
  OrganizationResponse instance,
) => <String, dynamic>{
  'organization': instance.organization.toJson(),
  'member': instance.member?.toJson(),
};
