// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_email_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInEmailBody {

 String get email; String get password; String? get callbackURL; String? get rememberMe;
/// Create a copy of SignInEmailBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEmailBodyCopyWith<SignInEmailBody> get copyWith => _$SignInEmailBodyCopyWithImpl<SignInEmailBody>(this as SignInEmailBody, _$identity);

  /// Serializes this SignInEmailBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEmailBody&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,callbackURL,rememberMe);

@override
String toString() {
  return 'SignInEmailBody(email: $email, password: $password, callbackURL: $callbackURL, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class $SignInEmailBodyCopyWith<$Res>  {
  factory $SignInEmailBodyCopyWith(SignInEmailBody value, $Res Function(SignInEmailBody) _then) = _$SignInEmailBodyCopyWithImpl;
@useResult
$Res call({
 String email, String password, String? callbackURL, String? rememberMe
});




}
/// @nodoc
class _$SignInEmailBodyCopyWithImpl<$Res>
    implements $SignInEmailBodyCopyWith<$Res> {
  _$SignInEmailBodyCopyWithImpl(this._self, this._then);

  final SignInEmailBody _self;
  final $Res Function(SignInEmailBody) _then;

/// Create a copy of SignInEmailBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? callbackURL = freezed,Object? rememberMe = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignInEmailBody implements SignInEmailBody {
  const _SignInEmailBody({required this.email, required this.password, this.callbackURL, this.rememberMe});
  factory _SignInEmailBody.fromJson(Map<String, dynamic> json) => _$SignInEmailBodyFromJson(json);

@override final  String email;
@override final  String password;
@override final  String? callbackURL;
@override final  String? rememberMe;

/// Create a copy of SignInEmailBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInEmailBodyCopyWith<_SignInEmailBody> get copyWith => __$SignInEmailBodyCopyWithImpl<_SignInEmailBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInEmailBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInEmailBody&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,callbackURL,rememberMe);

@override
String toString() {
  return 'SignInEmailBody(email: $email, password: $password, callbackURL: $callbackURL, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class _$SignInEmailBodyCopyWith<$Res> implements $SignInEmailBodyCopyWith<$Res> {
  factory _$SignInEmailBodyCopyWith(_SignInEmailBody value, $Res Function(_SignInEmailBody) _then) = __$SignInEmailBodyCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String? callbackURL, String? rememberMe
});




}
/// @nodoc
class __$SignInEmailBodyCopyWithImpl<$Res>
    implements _$SignInEmailBodyCopyWith<$Res> {
  __$SignInEmailBodyCopyWithImpl(this._self, this._then);

  final _SignInEmailBody _self;
  final $Res Function(_SignInEmailBody) _then;

/// Create a copy of SignInEmailBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? callbackURL = freezed,Object? rememberMe = freezed,}) {
  return _then(_SignInEmailBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
