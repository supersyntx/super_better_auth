// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JwtTokenResponse {

 String get token;
/// Create a copy of JwtTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JwtTokenResponseCopyWith<JwtTokenResponse> get copyWith => _$JwtTokenResponseCopyWithImpl<JwtTokenResponse>(this as JwtTokenResponse, _$identity);

  /// Serializes this JwtTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JwtTokenResponse&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'JwtTokenResponse(token: $token)';
}


}

/// @nodoc
abstract mixin class $JwtTokenResponseCopyWith<$Res>  {
  factory $JwtTokenResponseCopyWith(JwtTokenResponse value, $Res Function(JwtTokenResponse) _then) = _$JwtTokenResponseCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$JwtTokenResponseCopyWithImpl<$Res>
    implements $JwtTokenResponseCopyWith<$Res> {
  _$JwtTokenResponseCopyWithImpl(this._self, this._then);

  final JwtTokenResponse _self;
  final $Res Function(JwtTokenResponse) _then;

/// Create a copy of JwtTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _JwtTokenResponse implements JwtTokenResponse {
  const _JwtTokenResponse({required this.token});
  factory _JwtTokenResponse.fromJson(Map<String, dynamic> json) => _$JwtTokenResponseFromJson(json);

@override final  String token;

/// Create a copy of JwtTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JwtTokenResponseCopyWith<_JwtTokenResponse> get copyWith => __$JwtTokenResponseCopyWithImpl<_JwtTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JwtTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JwtTokenResponse&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'JwtTokenResponse(token: $token)';
}


}

/// @nodoc
abstract mixin class _$JwtTokenResponseCopyWith<$Res> implements $JwtTokenResponseCopyWith<$Res> {
  factory _$JwtTokenResponseCopyWith(_JwtTokenResponse value, $Res Function(_JwtTokenResponse) _then) = __$JwtTokenResponseCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class __$JwtTokenResponseCopyWithImpl<$Res>
    implements _$JwtTokenResponseCopyWith<$Res> {
  __$JwtTokenResponseCopyWithImpl(this._self, this._then);

  final _JwtTokenResponse _self;
  final $Res Function(_JwtTokenResponse) _then;

/// Create a copy of JwtTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_JwtTokenResponse(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
