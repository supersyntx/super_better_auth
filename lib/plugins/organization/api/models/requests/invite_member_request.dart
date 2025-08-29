import 'package:json_annotation/json_annotation.dart';

part 'invite_member_request.g.dart';

@JsonSerializable()
class InviteMemberRequest {
  final String email;
  final String role;
  final String? organizationId;
  final bool? resend;
  final String? teamId;

  const InviteMemberRequest({
    required this.email,
    required this.role,
    this.organizationId,
    this.resend,
    this.teamId,
  });

  factory InviteMemberRequest.fromJson(Map<String, dynamic> json) =>
      _$InviteMemberRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InviteMemberRequestToJson(this);
}
