// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_email_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInEmailBody _$SignInEmailBodyFromJson(Map<String, dynamic> json) =>
    _SignInEmailBody(
      email: json['email'] as String,
      password: json['password'] as String,
      callbackURL: json['callbackURL'] as String?,
      rememberMe: json['rememberMe'] as String?,
    );

Map<String, dynamic> _$SignInEmailBodyToJson(_SignInEmailBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'callbackURL': instance.callbackURL,
      'rememberMe': instance.rememberMe,
    };
