import 'package:json_annotation/json_annotation.dart';

part 'update_team_request.g.dart';

@JsonSerializable()
class UpdateTeamRequest {
  final String teamId;
  final String? name;
  final String? organizationId;

  const UpdateTeamRequest({
    required this.teamId,
    this.name,
    this.organizationId,
  });

  factory UpdateTeamRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTeamRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateTeamRequestToJson(this);
}
