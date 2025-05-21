// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_username_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInUsernameBody {

 String get username; String get password; String? get rememberMe;
/// Create a copy of SignInUsernameBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInUsernameBodyCopyWith<SignInUsernameBody> get copyWith => _$SignInUsernameBodyCopyWithImpl<SignInUsernameBody>(this as SignInUsernameBody, _$identity);

  /// Serializes this SignInUsernameBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInUsernameBody&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,rememberMe);

@override
String toString() {
  return 'SignInUsernameBody(username: $username, password: $password, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class $SignInUsernameBodyCopyWith<$Res>  {
  factory $SignInUsernameBodyCopyWith(SignInUsernameBody value, $Res Function(SignInUsernameBody) _then) = _$SignInUsernameBodyCopyWithImpl;
@useResult
$Res call({
 String username, String password, String? rememberMe
});




}
/// @nodoc
class _$SignInUsernameBodyCopyWithImpl<$Res>
    implements $SignInUsernameBodyCopyWith<$Res> {
  _$SignInUsernameBodyCopyWithImpl(this._self, this._then);

  final SignInUsernameBody _self;
  final $Res Function(SignInUsernameBody) _then;

/// Create a copy of SignInUsernameBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,Object? rememberMe = freezed,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignInUsernameBody implements SignInUsernameBody {
  const _SignInUsernameBody({required this.username, required this.password, this.rememberMe});
  factory _SignInUsernameBody.fromJson(Map<String, dynamic> json) => _$SignInUsernameBodyFromJson(json);

@override final  String username;
@override final  String password;
@override final  String? rememberMe;

/// Create a copy of SignInUsernameBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInUsernameBodyCopyWith<_SignInUsernameBody> get copyWith => __$SignInUsernameBodyCopyWithImpl<_SignInUsernameBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInUsernameBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInUsernameBody&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,rememberMe);

@override
String toString() {
  return 'SignInUsernameBody(username: $username, password: $password, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class _$SignInUsernameBodyCopyWith<$Res> implements $SignInUsernameBodyCopyWith<$Res> {
  factory _$SignInUsernameBodyCopyWith(_SignInUsernameBody value, $Res Function(_SignInUsernameBody) _then) = __$SignInUsernameBodyCopyWithImpl;
@override @useResult
$Res call({
 String username, String password, String? rememberMe
});




}
/// @nodoc
class __$SignInUsernameBodyCopyWithImpl<$Res>
    implements _$SignInUsernameBodyCopyWith<$Res> {
  __$SignInUsernameBodyCopyWithImpl(this._self, this._then);

  final _SignInUsernameBody _self;
  final $Res Function(_SignInUsernameBody) _then;

/// Create a copy of SignInUsernameBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,Object? rememberMe = freezed,}) {
  return _then(_SignInUsernameBody(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
