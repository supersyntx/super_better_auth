// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cookie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CookieResponse _$CookieResponseFromJson(Map<String, dynamic> json) =>
    _CookieResponse(
      cookies: Map<String, String>.from(json['cookies'] as Map),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$CookieResponseToJson(_CookieResponse instance) =>
    <String, dynamic>{'cookies': instance.cookies, 'error': instance.error};
