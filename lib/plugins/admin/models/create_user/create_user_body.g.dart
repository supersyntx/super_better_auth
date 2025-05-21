// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateUserBody _$CreateUserBodyFromJson(Map<String, dynamic> json) =>
    _CreateUserBody(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      role: json['role'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$CreateUserBodyToJson(_CreateUserBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'data': instance.data,
    };
