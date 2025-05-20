// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'better_auth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BetterAuthConfig _$BetterAuthConfigFromJson(Map<String, dynamic> json) =>
    _BetterAuthConfig(
      scheme: json['scheme'] as String,
      baseUrl: json['baseUrl'] as String,
      storagePrefix: json['storagePrefix'] as String? ?? "better_auth",
    );

Map<String, dynamic> _$BetterAuthConfigToJson(_BetterAuthConfig instance) =>
    <String, dynamic>{
      'scheme': instance.scheme,
      'baseUrl': instance.baseUrl,
      'storagePrefix': instance.storagePrefix,
    };
