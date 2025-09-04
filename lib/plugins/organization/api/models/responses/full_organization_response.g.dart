// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_organization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FullOrganizationResponse _$FullOrganizationResponseFromJson(
  Map<String, dynamic> json,
) => FullOrganizationResponse(
  organization: Organization.fromJson(
    json['organization'] as Map<String, dynamic>,
  ),
  members:
      (json['members'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$FullOrganizationResponseToJson(
  FullOrganizationResponse instance,
) => <String, dynamic>{
  'organization': instance.organization.toJson(),
  'members': instance.members.map((e) => e.toJson()).toList(),
};
