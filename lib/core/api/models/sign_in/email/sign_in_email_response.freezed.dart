// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInEmailResponse {

 bool get redirect; String get token; String? get url; User get user;
/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEmailResponseCopyWith<SignInEmailResponse> get copyWith => _$SignInEmailResponseCopyWithImpl<SignInEmailResponse>(this as SignInEmailResponse, _$identity);

  /// Serializes this SignInEmailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEmailResponse&&(identical(other.redirect, redirect) || other.redirect == redirect)&&(identical(other.token, token) || other.token == token)&&(identical(other.url, url) || other.url == url)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,redirect,token,url,user);

@override
String toString() {
  return 'SignInEmailResponse(redirect: $redirect, token: $token, url: $url, user: $user)';
}


}

/// @nodoc
abstract mixin class $SignInEmailResponseCopyWith<$Res>  {
  factory $SignInEmailResponseCopyWith(SignInEmailResponse value, $Res Function(SignInEmailResponse) _then) = _$SignInEmailResponseCopyWithImpl;
@useResult
$Res call({
 bool redirect, String token, String? url, User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$SignInEmailResponseCopyWithImpl<$Res>
    implements $SignInEmailResponseCopyWith<$Res> {
  _$SignInEmailResponseCopyWithImpl(this._self, this._then);

  final SignInEmailResponse _self;
  final $Res Function(SignInEmailResponse) _then;

/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redirect = null,Object? token = null,Object? url = freezed,Object? user = null,}) {
  return _then(_self.copyWith(
redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}
/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SignInEmailResponse implements SignInEmailResponse {
  const _SignInEmailResponse({this.redirect = false, required this.token, this.url, required this.user});
  factory _SignInEmailResponse.fromJson(Map<String, dynamic> json) => _$SignInEmailResponseFromJson(json);

@override@JsonKey() final  bool redirect;
@override final  String token;
@override final  String? url;
@override final  User user;

/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInEmailResponseCopyWith<_SignInEmailResponse> get copyWith => __$SignInEmailResponseCopyWithImpl<_SignInEmailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInEmailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInEmailResponse&&(identical(other.redirect, redirect) || other.redirect == redirect)&&(identical(other.token, token) || other.token == token)&&(identical(other.url, url) || other.url == url)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,redirect,token,url,user);

@override
String toString() {
  return 'SignInEmailResponse(redirect: $redirect, token: $token, url: $url, user: $user)';
}


}

/// @nodoc
abstract mixin class _$SignInEmailResponseCopyWith<$Res> implements $SignInEmailResponseCopyWith<$Res> {
  factory _$SignInEmailResponseCopyWith(_SignInEmailResponse value, $Res Function(_SignInEmailResponse) _then) = __$SignInEmailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool redirect, String token, String? url, User user
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$SignInEmailResponseCopyWithImpl<$Res>
    implements _$SignInEmailResponseCopyWith<$Res> {
  __$SignInEmailResponseCopyWithImpl(this._self, this._then);

  final _SignInEmailResponse _self;
  final $Res Function(_SignInEmailResponse) _then;

/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redirect = null,Object? token = null,Object? url = freezed,Object? user = null,}) {
  return _then(_SignInEmailResponse(
redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
