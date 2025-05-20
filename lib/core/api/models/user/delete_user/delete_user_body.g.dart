// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_user_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteUserBody _$DeleteUserBodyFromJson(Map<String, dynamic> json) =>
    _DeleteUserBody(
      callbackURL: json['callbackURL'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$DeleteUserBodyToJson(_DeleteUserBody instance) =>
    <String, dynamic>{
      'callbackURL': instance.callbackURL,
      'password': instance.password,
      'token': instance.token,
    };
