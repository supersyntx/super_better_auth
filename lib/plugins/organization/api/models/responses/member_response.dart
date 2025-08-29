import 'package:json_annotation/json_annotation.dart';
import 'package:super_better_auth/plugins/organization/models/member.dart';

part 'member_response.g.dart';

@JsonSerializable()
class MemberResponse {
  final Member member;

  const MemberResponse({required this.member});

  factory MemberResponse.fromJson(Map<String, dynamic> json) =>
      _$MemberResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MemberResponseToJson(this);
}
