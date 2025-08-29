// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_team_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTeamRequest _$UpdateTeamRequestFromJson(Map<String, dynamic> json) =>
    UpdateTeamRequest(
      teamId: json['teamId'] as String,
      name: json['name'] as String?,
      organizationId: json['organizationId'] as String?,
    );

Map<String, dynamic> _$UpdateTeamRequestToJson(UpdateTeamRequest instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'name': instance.name,
      'organizationId': instance.organizationId,
    };
