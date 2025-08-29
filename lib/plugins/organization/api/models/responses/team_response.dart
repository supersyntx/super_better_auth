import 'package:json_annotation/json_annotation.dart';
import 'package:super_better_auth/plugins/organization/models/team.dart';

part 'team_response.g.dart';

@JsonSerializable()
class TeamResponse {
  final Team team;

  const TeamResponse({required this.team});

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeamResponseToJson(this);
}
