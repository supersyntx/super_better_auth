// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordOtpBody {

 String get email; String get otp; String get password;
/// Create a copy of PasswordOtpBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordOtpBodyCopyWith<PasswordOtpBody> get copyWith => _$PasswordOtpBodyCopyWithImpl<PasswordOtpBody>(this as PasswordOtpBody, _$identity);

  /// Serializes this PasswordOtpBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordOtpBody&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,otp,password);

@override
String toString() {
  return 'PasswordOtpBody(email: $email, otp: $otp, password: $password)';
}


}

/// @nodoc
abstract mixin class $PasswordOtpBodyCopyWith<$Res>  {
  factory $PasswordOtpBodyCopyWith(PasswordOtpBody value, $Res Function(PasswordOtpBody) _then) = _$PasswordOtpBodyCopyWithImpl;
@useResult
$Res call({
 String email, String otp, String password
});




}
/// @nodoc
class _$PasswordOtpBodyCopyWithImpl<$Res>
    implements $PasswordOtpBodyCopyWith<$Res> {
  _$PasswordOtpBodyCopyWithImpl(this._self, this._then);

  final PasswordOtpBody _self;
  final $Res Function(PasswordOtpBody) _then;

/// Create a copy of PasswordOtpBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? otp = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PasswordOtpBody implements PasswordOtpBody {
  const _PasswordOtpBody({required this.email, required this.otp, required this.password});
  factory _PasswordOtpBody.fromJson(Map<String, dynamic> json) => _$PasswordOtpBodyFromJson(json);

@override final  String email;
@override final  String otp;
@override final  String password;

/// Create a copy of PasswordOtpBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordOtpBodyCopyWith<_PasswordOtpBody> get copyWith => __$PasswordOtpBodyCopyWithImpl<_PasswordOtpBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasswordOtpBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordOtpBody&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,otp,password);

@override
String toString() {
  return 'PasswordOtpBody(email: $email, otp: $otp, password: $password)';
}


}

/// @nodoc
abstract mixin class _$PasswordOtpBodyCopyWith<$Res> implements $PasswordOtpBodyCopyWith<$Res> {
  factory _$PasswordOtpBodyCopyWith(_PasswordOtpBody value, $Res Function(_PasswordOtpBody) _then) = __$PasswordOtpBodyCopyWithImpl;
@override @useResult
$Res call({
 String email, String otp, String password
});




}
/// @nodoc
class __$PasswordOtpBodyCopyWithImpl<$Res>
    implements _$PasswordOtpBodyCopyWith<$Res> {
  __$PasswordOtpBodyCopyWithImpl(this._self, this._then);

  final _PasswordOtpBody _self;
  final $Res Function(_PasswordOtpBody) _then;

/// Create a copy of PasswordOtpBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? otp = null,Object? password = null,}) {
  return _then(_PasswordOtpBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
