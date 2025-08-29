import 'package:json_annotation/json_annotation.dart';
import 'package:super_better_auth/core/models/user/user.dart';
import 'organization.dart';

part 'invitation.g.dart';

@JsonSerializable()
class Invitation {
  final String id;
  final String email;
  final String inviterId;
  final String organizationId;
  final String role;
  final String status;
  final DateTime expiresAt;
  final DateTime createdAt;
  final String? teamId;
  final User? inviter;
  final Organization? organization;

  const Invitation({
    required this.id,
    required this.email,
    required this.inviterId,
    required this.organizationId,
    required this.role,
    required this.status,
    required this.expiresAt,
    required this.createdAt,
    this.teamId,
    this.inviter,
    this.organization,
  });

  factory Invitation.fromJson(Map<String, dynamic> json) =>
      _$InvitationFromJson(json);

  Map<String, dynamic> toJson() => _$InvitationToJson(this);

  Invitation copyWith({
    String? id,
    String? email,
    String? inviterId,
    String? organizationId,
    String? role,
    String? status,
    DateTime? expiresAt,
    DateTime? createdAt,
    String? teamId,
    User? inviter,
    Organization? organization,
  }) {
    return Invitation(
      id: id ?? this.id,
      email: email ?? this.email,
      inviterId: inviterId ?? this.inviterId,
      organizationId: organizationId ?? this.organizationId,
      role: role ?? this.role,
      status: status ?? this.status,
      expiresAt: expiresAt ?? this.expiresAt,
      createdAt: createdAt ?? this.createdAt,
      teamId: teamId ?? this.teamId,
      inviter: inviter ?? this.inviter,
      organization: organization ?? this.organization,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Invitation &&
        other.id == id &&
        other.email == email &&
        other.inviterId == inviterId &&
        other.organizationId == organizationId &&
        other.role == role &&
        other.status == status &&
        other.expiresAt == expiresAt &&
        other.createdAt == createdAt &&
        other.teamId == teamId &&
        other.inviter == inviter &&
        other.organization == organization;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        email.hashCode ^
        inviterId.hashCode ^
        organizationId.hashCode ^
        role.hashCode ^
        status.hashCode ^
        expiresAt.hashCode ^
        createdAt.hashCode ^
        teamId.hashCode ^
        inviter.hashCode ^
        organization.hashCode;
  }

  @override
  String toString() {
    return 'Invitation(id: $id, email: $email, inviterId: $inviterId, organizationId: $organizationId, role: $role, status: $status, expiresAt: $expiresAt, createdAt: $createdAt, teamId: $teamId, inviter: $inviter, organization: $organization)';
  }
}
