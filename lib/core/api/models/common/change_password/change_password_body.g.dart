// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordBody _$ChangePasswordBodyFromJson(Map<String, dynamic> json) =>
    _ChangePasswordBody(
      newPassword: json['newPassword'] as String,
      currentPassword: json['currentPassword'] as String,
      revokeOtherSessions: json['revokeOtherSessions'] as String?,
    );

Map<String, dynamic> _$ChangePasswordBodyToJson(_ChangePasswordBody instance) =>
    <String, dynamic>{
      'newPassword': instance.newPassword,
      'currentPassword': instance.currentPassword,
      'revokeOtherSessions': instance.revokeOtherSessions,
    };
