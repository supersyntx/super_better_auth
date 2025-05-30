// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_social_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInSocialResponse {

 bool get redirect; String get token; String get url; String? get required;
/// Create a copy of SignInSocialResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInSocialResponseCopyWith<SignInSocialResponse> get copyWith => _$SignInSocialResponseCopyWithImpl<SignInSocialResponse>(this as SignInSocialResponse, _$identity);

  /// Serializes this SignInSocialResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInSocialResponse&&(identical(other.redirect, redirect) || other.redirect == redirect)&&(identical(other.token, token) || other.token == token)&&(identical(other.url, url) || other.url == url)&&(identical(other.required, required) || other.required == required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,redirect,token,url,required);

@override
String toString() {
  return 'SignInSocialResponse(redirect: $redirect, token: $token, url: $url, required: $required)';
}


}

/// @nodoc
abstract mixin class $SignInSocialResponseCopyWith<$Res>  {
  factory $SignInSocialResponseCopyWith(SignInSocialResponse value, $Res Function(SignInSocialResponse) _then) = _$SignInSocialResponseCopyWithImpl;
@useResult
$Res call({
 bool redirect, String token, String url, String? required
});




}
/// @nodoc
class _$SignInSocialResponseCopyWithImpl<$Res>
    implements $SignInSocialResponseCopyWith<$Res> {
  _$SignInSocialResponseCopyWithImpl(this._self, this._then);

  final SignInSocialResponse _self;
  final $Res Function(SignInSocialResponse) _then;

/// Create a copy of SignInSocialResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redirect = null,Object? token = null,Object? url = null,Object? required = freezed,}) {
  return _then(_self.copyWith(
redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignInSocialResponse implements SignInSocialResponse {
  const _SignInSocialResponse({this.redirect = false, this.token = "", this.url = "", this.required});
  factory _SignInSocialResponse.fromJson(Map<String, dynamic> json) => _$SignInSocialResponseFromJson(json);

@override@JsonKey() final  bool redirect;
@override@JsonKey() final  String token;
@override@JsonKey() final  String url;
@override final  String? required;

/// Create a copy of SignInSocialResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInSocialResponseCopyWith<_SignInSocialResponse> get copyWith => __$SignInSocialResponseCopyWithImpl<_SignInSocialResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInSocialResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInSocialResponse&&(identical(other.redirect, redirect) || other.redirect == redirect)&&(identical(other.token, token) || other.token == token)&&(identical(other.url, url) || other.url == url)&&(identical(other.required, required) || other.required == required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,redirect,token,url,required);

@override
String toString() {
  return 'SignInSocialResponse(redirect: $redirect, token: $token, url: $url, required: $required)';
}


}

/// @nodoc
abstract mixin class _$SignInSocialResponseCopyWith<$Res> implements $SignInSocialResponseCopyWith<$Res> {
  factory _$SignInSocialResponseCopyWith(_SignInSocialResponse value, $Res Function(_SignInSocialResponse) _then) = __$SignInSocialResponseCopyWithImpl;
@override @useResult
$Res call({
 bool redirect, String token, String url, String? required
});




}
/// @nodoc
class __$SignInSocialResponseCopyWithImpl<$Res>
    implements _$SignInSocialResponseCopyWith<$Res> {
  __$SignInSocialResponseCopyWithImpl(this._self, this._then);

  final _SignInSocialResponse _self;
  final $Res Function(_SignInSocialResponse) _then;

/// Create a copy of SignInSocialResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redirect = null,Object? token = null,Object? url = null,Object? required = freezed,}) {
  return _then(_SignInSocialResponse(
redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
