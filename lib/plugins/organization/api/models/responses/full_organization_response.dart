import 'package:json_annotation/json_annotation.dart';
import 'package:super_better_auth/plugins/organization/models/organization.dart';
import 'package:super_better_auth/plugins/organization/models/member.dart';

part 'full_organization_response.g.dart';

@JsonSerializable()
class FullOrganizationResponse {
  final Organization organization;
  final List<Member> members;

  const FullOrganizationResponse({
    required this.organization,
    required this.members,
  });

  factory FullOrganizationResponse.fromJson(Map<String, dynamic> json) =>
      _$FullOrganizationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FullOrganizationResponseToJson(this);
}
