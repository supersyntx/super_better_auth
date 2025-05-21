// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_permission_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckPermissionBody {

 Map<String, dynamic> get permissions;
/// Create a copy of CheckPermissionBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckPermissionBodyCopyWith<CheckPermissionBody> get copyWith => _$CheckPermissionBodyCopyWithImpl<CheckPermissionBody>(this as CheckPermissionBody, _$identity);

  /// Serializes this CheckPermissionBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPermissionBody&&const DeepCollectionEquality().equals(other.permissions, permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(permissions));

@override
String toString() {
  return 'CheckPermissionBody(permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $CheckPermissionBodyCopyWith<$Res>  {
  factory $CheckPermissionBodyCopyWith(CheckPermissionBody value, $Res Function(CheckPermissionBody) _then) = _$CheckPermissionBodyCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> permissions
});




}
/// @nodoc
class _$CheckPermissionBodyCopyWithImpl<$Res>
    implements $CheckPermissionBodyCopyWith<$Res> {
  _$CheckPermissionBodyCopyWithImpl(this._self, this._then);

  final CheckPermissionBody _self;
  final $Res Function(CheckPermissionBody) _then;

/// Create a copy of CheckPermissionBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permissions = null,}) {
  return _then(_self.copyWith(
permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CheckPermissionBody implements CheckPermissionBody {
  const _CheckPermissionBody({required final  Map<String, dynamic> permissions}): _permissions = permissions;
  factory _CheckPermissionBody.fromJson(Map<String, dynamic> json) => _$CheckPermissionBodyFromJson(json);

 final  Map<String, dynamic> _permissions;
@override Map<String, dynamic> get permissions {
  if (_permissions is EqualUnmodifiableMapView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_permissions);
}


/// Create a copy of CheckPermissionBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckPermissionBodyCopyWith<_CheckPermissionBody> get copyWith => __$CheckPermissionBodyCopyWithImpl<_CheckPermissionBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckPermissionBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckPermissionBody&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'CheckPermissionBody(permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$CheckPermissionBodyCopyWith<$Res> implements $CheckPermissionBodyCopyWith<$Res> {
  factory _$CheckPermissionBodyCopyWith(_CheckPermissionBody value, $Res Function(_CheckPermissionBody) _then) = __$CheckPermissionBodyCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic> permissions
});




}
/// @nodoc
class __$CheckPermissionBodyCopyWithImpl<$Res>
    implements _$CheckPermissionBodyCopyWith<$Res> {
  __$CheckPermissionBodyCopyWithImpl(this._self, this._then);

  final _CheckPermissionBody _self;
  final $Res Function(_CheckPermissionBody) _then;

/// Create a copy of CheckPermissionBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permissions = null,}) {
  return _then(_CheckPermissionBody(
permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
