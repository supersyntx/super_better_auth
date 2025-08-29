import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  final String id;
  final String name;
  final String organizationId;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const Team({
    required this.id,
    required this.name,
    required this.organizationId,
    required this.createdAt,
    this.updatedAt,
  });

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);

  Team copyWith({
    String? id,
    String? name,
    String? organizationId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Team(
      id: id ?? this.id,
      name: name ?? this.name,
      organizationId: organizationId ?? this.organizationId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Team &&
        other.id == id &&
        other.name == name &&
        other.organizationId == organizationId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        organizationId.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return 'Team(id: $id, name: $name, organizationId: $organizationId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
