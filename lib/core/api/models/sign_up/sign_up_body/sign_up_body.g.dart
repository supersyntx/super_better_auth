// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpBody _$SignUpBodyFromJson(Map<String, dynamic> json) => _SignUpBody(
  name: json['name'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  callbackURL: json['callbackURL'] as String?,
);

Map<String, dynamic> _$SignUpBodyToJson(_SignUpBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'callbackURL': instance.callbackURL,
    };
