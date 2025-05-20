// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordBody {

 String get email; String? get redirectTo;
/// Create a copy of ForgotPasswordBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordBodyCopyWith<ForgotPasswordBody> get copyWith => _$ForgotPasswordBodyCopyWithImpl<ForgotPasswordBody>(this as ForgotPasswordBody, _$identity);

  /// Serializes this ForgotPasswordBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordBody&&(identical(other.email, email) || other.email == email)&&(identical(other.redirectTo, redirectTo) || other.redirectTo == redirectTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,redirectTo);

@override
String toString() {
  return 'ForgotPasswordBody(email: $email, redirectTo: $redirectTo)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordBodyCopyWith<$Res>  {
  factory $ForgotPasswordBodyCopyWith(ForgotPasswordBody value, $Res Function(ForgotPasswordBody) _then) = _$ForgotPasswordBodyCopyWithImpl;
@useResult
$Res call({
 String email, String? redirectTo
});




}
/// @nodoc
class _$ForgotPasswordBodyCopyWithImpl<$Res>
    implements $ForgotPasswordBodyCopyWith<$Res> {
  _$ForgotPasswordBodyCopyWithImpl(this._self, this._then);

  final ForgotPasswordBody _self;
  final $Res Function(ForgotPasswordBody) _then;

/// Create a copy of ForgotPasswordBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? redirectTo = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectTo: freezed == redirectTo ? _self.redirectTo : redirectTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ForgotPasswordBody implements ForgotPasswordBody {
  const _ForgotPasswordBody({required this.email, this.redirectTo});
  factory _ForgotPasswordBody.fromJson(Map<String, dynamic> json) => _$ForgotPasswordBodyFromJson(json);

@override final  String email;
@override final  String? redirectTo;

/// Create a copy of ForgotPasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordBodyCopyWith<_ForgotPasswordBody> get copyWith => __$ForgotPasswordBodyCopyWithImpl<_ForgotPasswordBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgotPasswordBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordBody&&(identical(other.email, email) || other.email == email)&&(identical(other.redirectTo, redirectTo) || other.redirectTo == redirectTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,redirectTo);

@override
String toString() {
  return 'ForgotPasswordBody(email: $email, redirectTo: $redirectTo)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordBodyCopyWith<$Res> implements $ForgotPasswordBodyCopyWith<$Res> {
  factory _$ForgotPasswordBodyCopyWith(_ForgotPasswordBody value, $Res Function(_ForgotPasswordBody) _then) = __$ForgotPasswordBodyCopyWithImpl;
@override @useResult
$Res call({
 String email, String? redirectTo
});




}
/// @nodoc
class __$ForgotPasswordBodyCopyWithImpl<$Res>
    implements _$ForgotPasswordBodyCopyWith<$Res> {
  __$ForgotPasswordBodyCopyWithImpl(this._self, this._then);

  final _ForgotPasswordBody _self;
  final $Res Function(_ForgotPasswordBody) _then;

/// Create a copy of ForgotPasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? redirectTo = freezed,}) {
  return _then(_ForgotPasswordBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectTo: freezed == redirectTo ? _self.redirectTo : redirectTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
