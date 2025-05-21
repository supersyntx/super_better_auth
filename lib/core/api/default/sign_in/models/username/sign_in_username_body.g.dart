// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_username_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInUsernameBody _$SignInUsernameBodyFromJson(Map<String, dynamic> json) =>
    _SignInUsernameBody(
      username: json['username'] as String,
      password: json['password'] as String,
      rememberMe: json['rememberMe'] as String?,
    );

Map<String, dynamic> _$SignInUsernameBodyToJson(_SignInUsernameBody instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'rememberMe': instance.rememberMe,
    };
