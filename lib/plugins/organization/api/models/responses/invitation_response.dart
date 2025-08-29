import 'package:json_annotation/json_annotation.dart';
import 'package:super_better_auth/plugins/organization/models/invitation.dart';

part 'invitation_response.g.dart';

@JsonSerializable()
class InvitationResponse {
  final Invitation invitation;

  const InvitationResponse({required this.invitation});

  factory InvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$InvitationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvitationResponseToJson(this);
}
