import 'package:json_annotation/json_annotation.dart';

part 'organization.g.dart';

@JsonSerializable()
class Organization {
  final String id;
  final String name;
  final String slug;
  final String? logo;
  final Map<String, dynamic>? metadata;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const Organization({
    required this.id,
    required this.name,
    required this.slug,
    this.logo,
    this.metadata,
    required this.createdAt,
    this.updatedAt,
  });

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationToJson(this);

  Organization copyWith({
    String? id,
    String? name,
    String? slug,
    String? logo,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Organization(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      logo: logo ?? this.logo,
      metadata: metadata ?? this.metadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Organization &&
        other.id == id &&
        other.name == name &&
        other.slug == slug &&
        other.logo == logo &&
        other.metadata == metadata &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        logo.hashCode ^
        metadata.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return 'Organization(id: $id, name: $name, slug: $slug, logo: $logo, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
