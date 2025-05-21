// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_user_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetUserPasswordBody _$SetUserPasswordBodyFromJson(Map<String, dynamic> json) =>
    _SetUserPasswordBody(
      newPassword: json['newPassword'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$SetUserPasswordBodyToJson(
  _SetUserPasswordBody instance,
) => <String, dynamic>{
  'newPassword': instance.newPassword,
  'userId': instance.userId,
};
