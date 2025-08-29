// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_organization_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrganizationRequest _$UpdateOrganizationRequestFromJson(
  Map<String, dynamic> json,
) => UpdateOrganizationRequest(
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  logo: json['logo'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  organizationId: json['organizationId'] as String?,
);

Map<String, dynamic> _$UpdateOrganizationRequestToJson(
  UpdateOrganizationRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'slug': instance.slug,
  'logo': instance.logo,
  'metadata': instance.metadata,
  'organizationId': instance.organizationId,
};
