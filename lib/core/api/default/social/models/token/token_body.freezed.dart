// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenBody {

 String get providerId; String? get accountId; String? get userId;
/// Create a copy of TokenBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenBodyCopyWith<TokenBody> get copyWith => _$TokenBodyCopyWithImpl<TokenBody>(this as TokenBody, _$identity);

  /// Serializes this TokenBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenBody&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerId,accountId,userId);

@override
String toString() {
  return 'TokenBody(providerId: $providerId, accountId: $accountId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $TokenBodyCopyWith<$Res>  {
  factory $TokenBodyCopyWith(TokenBody value, $Res Function(TokenBody) _then) = _$TokenBodyCopyWithImpl;
@useResult
$Res call({
 String providerId, String? accountId, String? userId
});




}
/// @nodoc
class _$TokenBodyCopyWithImpl<$Res>
    implements $TokenBodyCopyWith<$Res> {
  _$TokenBodyCopyWithImpl(this._self, this._then);

  final TokenBody _self;
  final $Res Function(TokenBody) _then;

/// Create a copy of TokenBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? providerId = null,Object? accountId = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TokenBody implements TokenBody {
  const _TokenBody({required this.providerId, this.accountId, this.userId});
  factory _TokenBody.fromJson(Map<String, dynamic> json) => _$TokenBodyFromJson(json);

@override final  String providerId;
@override final  String? accountId;
@override final  String? userId;

/// Create a copy of TokenBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenBodyCopyWith<_TokenBody> get copyWith => __$TokenBodyCopyWithImpl<_TokenBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenBody&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerId,accountId,userId);

@override
String toString() {
  return 'TokenBody(providerId: $providerId, accountId: $accountId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$TokenBodyCopyWith<$Res> implements $TokenBodyCopyWith<$Res> {
  factory _$TokenBodyCopyWith(_TokenBody value, $Res Function(_TokenBody) _then) = __$TokenBodyCopyWithImpl;
@override @useResult
$Res call({
 String providerId, String? accountId, String? userId
});




}
/// @nodoc
class __$TokenBodyCopyWithImpl<$Res>
    implements _$TokenBodyCopyWith<$Res> {
  __$TokenBodyCopyWithImpl(this._self, this._then);

  final _TokenBody _self;
  final $Res Function(_TokenBody) _then;

/// Create a copy of TokenBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? providerId = null,Object? accountId = freezed,Object? userId = freezed,}) {
  return _then(_TokenBody(
providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
