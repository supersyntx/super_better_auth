// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPasswordBody _$ResetPasswordBodyFromJson(Map<String, dynamic> json) =>
    _ResetPasswordBody(
      newPassword: json['newPassword'] as String,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$ResetPasswordBodyToJson(_ResetPasswordBody instance) =>
    <String, dynamic>{
      'newPassword': instance.newPassword,
      'token': instance.token,
    };
