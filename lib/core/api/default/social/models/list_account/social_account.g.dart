// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialAccount _$SocialAccountFromJson(Map<String, dynamic> json) =>
    _SocialAccount(
      id: json['id'] as String,
      provider: json['provider'] as String,
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
      updatedAt:
          json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SocialAccountToJson(_SocialAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
