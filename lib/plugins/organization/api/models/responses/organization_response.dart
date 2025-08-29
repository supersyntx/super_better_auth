import 'package:json_annotation/json_annotation.dart';
import 'package:super_better_auth/plugins/organization/models/organization.dart';
import 'package:super_better_auth/plugins/organization/models/member.dart';

part 'organization_response.g.dart';

@JsonSerializable()
class OrganizationResponse {
  final Organization organization;
  final Member? member;

  const OrganizationResponse({required this.organization, this.member});

  factory OrganizationResponse.fromJson(Map<String, dynamic> json) =>
      _$OrganizationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationResponseToJson(this);
}
