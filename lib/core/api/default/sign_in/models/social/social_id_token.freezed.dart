// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_id_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialIdToken {

 String get token; String? get nonce; String? get accessToken; String? get refreshToken; int? get expiresAt;
/// Create a copy of SocialIdToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialIdTokenCopyWith<SocialIdToken> get copyWith => _$SocialIdTokenCopyWithImpl<SocialIdToken>(this as SocialIdToken, _$identity);

  /// Serializes this SocialIdToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialIdToken&&(identical(other.token, token) || other.token == token)&&(identical(other.nonce, nonce) || other.nonce == nonce)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,nonce,accessToken,refreshToken,expiresAt);

@override
String toString() {
  return 'SocialIdToken(token: $token, nonce: $nonce, accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $SocialIdTokenCopyWith<$Res>  {
  factory $SocialIdTokenCopyWith(SocialIdToken value, $Res Function(SocialIdToken) _then) = _$SocialIdTokenCopyWithImpl;
@useResult
$Res call({
 String token, String? nonce, String? accessToken, String? refreshToken, int? expiresAt
});




}
/// @nodoc
class _$SocialIdTokenCopyWithImpl<$Res>
    implements $SocialIdTokenCopyWith<$Res> {
  _$SocialIdTokenCopyWithImpl(this._self, this._then);

  final SocialIdToken _self;
  final $Res Function(SocialIdToken) _then;

/// Create a copy of SocialIdToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? nonce = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,Object? expiresAt = freezed,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,nonce: freezed == nonce ? _self.nonce : nonce // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SocialIdToken implements SocialIdToken {
  const _SocialIdToken({required this.token, this.nonce, this.accessToken, this.refreshToken, this.expiresAt});
  factory _SocialIdToken.fromJson(Map<String, dynamic> json) => _$SocialIdTokenFromJson(json);

@override final  String token;
@override final  String? nonce;
@override final  String? accessToken;
@override final  String? refreshToken;
@override final  int? expiresAt;

/// Create a copy of SocialIdToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialIdTokenCopyWith<_SocialIdToken> get copyWith => __$SocialIdTokenCopyWithImpl<_SocialIdToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialIdTokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialIdToken&&(identical(other.token, token) || other.token == token)&&(identical(other.nonce, nonce) || other.nonce == nonce)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,nonce,accessToken,refreshToken,expiresAt);

@override
String toString() {
  return 'SocialIdToken(token: $token, nonce: $nonce, accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$SocialIdTokenCopyWith<$Res> implements $SocialIdTokenCopyWith<$Res> {
  factory _$SocialIdTokenCopyWith(_SocialIdToken value, $Res Function(_SocialIdToken) _then) = __$SocialIdTokenCopyWithImpl;
@override @useResult
$Res call({
 String token, String? nonce, String? accessToken, String? refreshToken, int? expiresAt
});




}
/// @nodoc
class __$SocialIdTokenCopyWithImpl<$Res>
    implements _$SocialIdTokenCopyWith<$Res> {
  __$SocialIdTokenCopyWithImpl(this._self, this._then);

  final _SocialIdToken _self;
  final $Res Function(_SocialIdToken) _then;

/// Create a copy of SocialIdToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? nonce = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,Object? expiresAt = freezed,}) {
  return _then(_SocialIdToken(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,nonce: freezed == nonce ? _self.nonce : nonce // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
