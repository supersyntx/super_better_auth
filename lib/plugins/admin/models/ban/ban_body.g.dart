// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BanBody _$BanBodyFromJson(Map<String, dynamic> json) => _BanBody(
  userId: json['userId'] as String,
  banReason: json['banReason'] as String? ?? "",
  banExpiresIn: json['banExpiresIn'] as String?,
);

Map<String, dynamic> _$BanBodyToJson(_BanBody instance) => <String, dynamic>{
  'userId': instance.userId,
  'banReason': instance.banReason,
  'banExpiresIn': instance.banExpiresIn,
};
