import 'package:json_annotation/json_annotation.dart';

part 'update_organization_request.g.dart';

@JsonSerializable()
class UpdateOrganizationRequest {
  final String? name;
  final String? slug;
  final String? logo;
  final Map<String, dynamic>? metadata;
  final String? organizationId;

  const UpdateOrganizationRequest({
    this.name,
    this.slug,
    this.logo,
    this.metadata,
    this.organizationId,
  });

  factory UpdateOrganizationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrganizationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrganizationRequestToJson(this);
}
