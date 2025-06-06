// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpBody {

 String get email; String get otp;
/// Create a copy of VerifyOtpBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpBodyCopyWith<VerifyOtpBody> get copyWith => _$VerifyOtpBodyCopyWithImpl<VerifyOtpBody>(this as VerifyOtpBody, _$identity);

  /// Serializes this VerifyOtpBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpBody&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,otp);

@override
String toString() {
  return 'VerifyOtpBody(email: $email, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpBodyCopyWith<$Res>  {
  factory $VerifyOtpBodyCopyWith(VerifyOtpBody value, $Res Function(VerifyOtpBody) _then) = _$VerifyOtpBodyCopyWithImpl;
@useResult
$Res call({
 String email, String otp
});




}
/// @nodoc
class _$VerifyOtpBodyCopyWithImpl<$Res>
    implements $VerifyOtpBodyCopyWith<$Res> {
  _$VerifyOtpBodyCopyWithImpl(this._self, this._then);

  final VerifyOtpBody _self;
  final $Res Function(VerifyOtpBody) _then;

/// Create a copy of VerifyOtpBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? otp = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VerifyOtpBody implements VerifyOtpBody {
  const _VerifyOtpBody({required this.email, required this.otp});
  factory _VerifyOtpBody.fromJson(Map<String, dynamic> json) => _$VerifyOtpBodyFromJson(json);

@override final  String email;
@override final  String otp;

/// Create a copy of VerifyOtpBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpBodyCopyWith<_VerifyOtpBody> get copyWith => __$VerifyOtpBodyCopyWithImpl<_VerifyOtpBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyOtpBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpBody&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,otp);

@override
String toString() {
  return 'VerifyOtpBody(email: $email, otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpBodyCopyWith<$Res> implements $VerifyOtpBodyCopyWith<$Res> {
  factory _$VerifyOtpBodyCopyWith(_VerifyOtpBody value, $Res Function(_VerifyOtpBody) _then) = __$VerifyOtpBodyCopyWithImpl;
@override @useResult
$Res call({
 String email, String otp
});




}
/// @nodoc
class __$VerifyOtpBodyCopyWithImpl<$Res>
    implements _$VerifyOtpBodyCopyWith<$Res> {
  __$VerifyOtpBodyCopyWithImpl(this._self, this._then);

  final _VerifyOtpBody _self;
  final $Res Function(_VerifyOtpBody) _then;

/// Create a copy of VerifyOtpBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? otp = null,}) {
  return _then(_VerifyOtpBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
