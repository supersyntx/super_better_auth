import 'package:json_annotation/json_annotation.dart';

part 'create_team_request.g.dart';

@JsonSerializable()
class CreateTeamRequest {
  final String name;
  final String? organizationId;

  const CreateTeamRequest({required this.name, this.organizationId});

  factory CreateTeamRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTeamRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTeamRequestToJson(this);
}
