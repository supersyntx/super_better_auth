import 'package:json_annotation/json_annotation.dart';
import 'package:super_better_auth/core/models/user/user.dart';

part 'member.g.dart';

@JsonSerializable()
class Member {
  final String id;
  final String userId;
  final String organizationId;
  final String role;
  final DateTime createdAt;
  final User? user;

  const Member({
    required this.id,
    required this.userId,
    required this.organizationId,
    required this.role,
    required this.createdAt,
    this.user,
  });

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  Map<String, dynamic> toJson() => _$MemberToJson(this);

  Member copyWith({
    String? id,
    String? userId,
    String? organizationId,
    String? role,
    DateTime? createdAt,
    User? user,
  }) {
    return Member(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      organizationId: organizationId ?? this.organizationId,
      role: role ?? this.role,
      createdAt: createdAt ?? this.createdAt,
      user: user ?? this.user,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Member &&
        other.id == id &&
        other.userId == userId &&
        other.organizationId == organizationId &&
        other.role == role &&
        other.createdAt == createdAt &&
        other.user == user;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        organizationId.hashCode ^
        role.hashCode ^
        createdAt.hashCode ^
        user.hashCode;
  }

  @override
  String toString() {
    return 'Member(id: $id, userId: $userId, organizationId: $organizationId, role: $role, createdAt: $createdAt, user: $user)';
  }
}
