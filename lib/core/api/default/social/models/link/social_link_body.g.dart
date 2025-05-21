// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_link_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialLinkBody _$SocialLinkBodyFromJson(Map<String, dynamic> json) =>
    _SocialLinkBody(
      callbackURL: json['callbackURL'] as String?,
      scopes: json['scopes'] as String?,
      provider: json['provider'] as String,
    );

Map<String, dynamic> _$SocialLinkBodyToJson(_SocialLinkBody instance) =>
    <String, dynamic>{
      'callbackURL': instance.callbackURL,
      'scopes': instance.scopes,
      'provider': instance.provider,
    };
