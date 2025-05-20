// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPasswordBody {

 String get newPassword; String? get token;
/// Create a copy of ResetPasswordBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordBodyCopyWith<ResetPasswordBody> get copyWith => _$ResetPasswordBodyCopyWithImpl<ResetPasswordBody>(this as ResetPasswordBody, _$identity);

  /// Serializes this ResetPasswordBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordBody&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPassword,token);

@override
String toString() {
  return 'ResetPasswordBody(newPassword: $newPassword, token: $token)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordBodyCopyWith<$Res>  {
  factory $ResetPasswordBodyCopyWith(ResetPasswordBody value, $Res Function(ResetPasswordBody) _then) = _$ResetPasswordBodyCopyWithImpl;
@useResult
$Res call({
 String newPassword, String? token
});




}
/// @nodoc
class _$ResetPasswordBodyCopyWithImpl<$Res>
    implements $ResetPasswordBodyCopyWith<$Res> {
  _$ResetPasswordBodyCopyWithImpl(this._self, this._then);

  final ResetPasswordBody _self;
  final $Res Function(ResetPasswordBody) _then;

/// Create a copy of ResetPasswordBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newPassword = null,Object? token = freezed,}) {
  return _then(_self.copyWith(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ResetPasswordBody implements ResetPasswordBody {
  const _ResetPasswordBody({required this.newPassword, this.token});
  factory _ResetPasswordBody.fromJson(Map<String, dynamic> json) => _$ResetPasswordBodyFromJson(json);

@override final  String newPassword;
@override final  String? token;

/// Create a copy of ResetPasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordBodyCopyWith<_ResetPasswordBody> get copyWith => __$ResetPasswordBodyCopyWithImpl<_ResetPasswordBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResetPasswordBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordBody&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPassword,token);

@override
String toString() {
  return 'ResetPasswordBody(newPassword: $newPassword, token: $token)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordBodyCopyWith<$Res> implements $ResetPasswordBodyCopyWith<$Res> {
  factory _$ResetPasswordBodyCopyWith(_ResetPasswordBody value, $Res Function(_ResetPasswordBody) _then) = __$ResetPasswordBodyCopyWithImpl;
@override @useResult
$Res call({
 String newPassword, String? token
});




}
/// @nodoc
class __$ResetPasswordBodyCopyWithImpl<$Res>
    implements _$ResetPasswordBodyCopyWith<$Res> {
  __$ResetPasswordBodyCopyWithImpl(this._self, this._then);

  final _ResetPasswordBody _self;
  final $Res Function(_ResetPasswordBody) _then;

/// Create a copy of ResetPasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newPassword = null,Object? token = freezed,}) {
  return _then(_ResetPasswordBody(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
