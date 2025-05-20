// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePasswordBody {

 String get newPassword; String get currentPassword; String? get revokeOtherSessions;
/// Create a copy of ChangePasswordBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordBodyCopyWith<ChangePasswordBody> get copyWith => _$ChangePasswordBodyCopyWithImpl<ChangePasswordBody>(this as ChangePasswordBody, _$identity);

  /// Serializes this ChangePasswordBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordBody&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.revokeOtherSessions, revokeOtherSessions) || other.revokeOtherSessions == revokeOtherSessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPassword,currentPassword,revokeOtherSessions);

@override
String toString() {
  return 'ChangePasswordBody(newPassword: $newPassword, currentPassword: $currentPassword, revokeOtherSessions: $revokeOtherSessions)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordBodyCopyWith<$Res>  {
  factory $ChangePasswordBodyCopyWith(ChangePasswordBody value, $Res Function(ChangePasswordBody) _then) = _$ChangePasswordBodyCopyWithImpl;
@useResult
$Res call({
 String newPassword, String currentPassword, String? revokeOtherSessions
});




}
/// @nodoc
class _$ChangePasswordBodyCopyWithImpl<$Res>
    implements $ChangePasswordBodyCopyWith<$Res> {
  _$ChangePasswordBodyCopyWithImpl(this._self, this._then);

  final ChangePasswordBody _self;
  final $Res Function(ChangePasswordBody) _then;

/// Create a copy of ChangePasswordBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newPassword = null,Object? currentPassword = null,Object? revokeOtherSessions = freezed,}) {
  return _then(_self.copyWith(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,revokeOtherSessions: freezed == revokeOtherSessions ? _self.revokeOtherSessions : revokeOtherSessions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChangePasswordBody implements ChangePasswordBody {
  const _ChangePasswordBody({required this.newPassword, required this.currentPassword, this.revokeOtherSessions});
  factory _ChangePasswordBody.fromJson(Map<String, dynamic> json) => _$ChangePasswordBodyFromJson(json);

@override final  String newPassword;
@override final  String currentPassword;
@override final  String? revokeOtherSessions;

/// Create a copy of ChangePasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordBodyCopyWith<_ChangePasswordBody> get copyWith => __$ChangePasswordBodyCopyWithImpl<_ChangePasswordBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePasswordBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordBody&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.revokeOtherSessions, revokeOtherSessions) || other.revokeOtherSessions == revokeOtherSessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPassword,currentPassword,revokeOtherSessions);

@override
String toString() {
  return 'ChangePasswordBody(newPassword: $newPassword, currentPassword: $currentPassword, revokeOtherSessions: $revokeOtherSessions)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordBodyCopyWith<$Res> implements $ChangePasswordBodyCopyWith<$Res> {
  factory _$ChangePasswordBodyCopyWith(_ChangePasswordBody value, $Res Function(_ChangePasswordBody) _then) = __$ChangePasswordBodyCopyWithImpl;
@override @useResult
$Res call({
 String newPassword, String currentPassword, String? revokeOtherSessions
});




}
/// @nodoc
class __$ChangePasswordBodyCopyWithImpl<$Res>
    implements _$ChangePasswordBodyCopyWith<$Res> {
  __$ChangePasswordBodyCopyWithImpl(this._self, this._then);

  final _ChangePasswordBody _self;
  final $Res Function(_ChangePasswordBody) _then;

/// Create a copy of ChangePasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newPassword = null,Object? currentPassword = null,Object? revokeOtherSessions = freezed,}) {
  return _then(_ChangePasswordBody(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,revokeOtherSessions: freezed == revokeOtherSessions ? _self.revokeOtherSessions : revokeOtherSessions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
