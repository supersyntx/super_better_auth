// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_organization_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrganizationRequest _$CreateOrganizationRequestFromJson(
  Map<String, dynamic> json,
) => CreateOrganizationRequest(
  name: json['name'] as String,
  slug: json['slug'] as String,
  logo: json['logo'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  keepCurrentActiveOrganization: json['keepCurrentActiveOrganization'] as bool?,
);

Map<String, dynamic> _$CreateOrganizationRequestToJson(
  CreateOrganizationRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'slug': instance.slug,
  'logo': instance.logo,
  'metadata': instance.metadata,
  'keepCurrentActiveOrganization': instance.keepCurrentActiveOrganization,
};
