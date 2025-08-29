import 'package:json_annotation/json_annotation.dart';

part 'create_organization_request.g.dart';

@JsonSerializable()
class CreateOrganizationRequest {
  final String name;
  final String slug;
  final String? logo;
  final Map<String, dynamic>? metadata;
  final bool? keepCurrentActiveOrganization;

  const CreateOrganizationRequest({
    required this.name,
    required this.slug,
    this.logo,
    this.metadata,
    this.keepCurrentActiveOrganization,
  });

  factory CreateOrganizationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrganizationRequestToJson(this);

  CreateOrganizationRequest copyWith({
    String? name,
    String? slug,
    String? logo,
    Map<String, dynamic>? metadata,
    bool? keepCurrentActiveOrganization,
  }) {
    return CreateOrganizationRequest(
      name: name ?? this.name,
      slug: slug ?? this.slug,
      logo: logo ?? this.logo,
      metadata: metadata ?? this.metadata,
      keepCurrentActiveOrganization:
          keepCurrentActiveOrganization ?? this.keepCurrentActiveOrganization,
    );
  }
}
