// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_id_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialIdToken _$SocialIdTokenFromJson(Map<String, dynamic> json) =>
    _SocialIdToken(
      token: json['token'] as String,
      nonce: json['nonce'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SocialIdTokenToJson(_SocialIdToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'nonce': instance.nonce,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt,
    };
