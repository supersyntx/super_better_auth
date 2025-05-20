// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserBody {

 String? get name; String? get image;
/// Create a copy of UpdateUserBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserBodyCopyWith<UpdateUserBody> get copyWith => _$UpdateUserBodyCopyWithImpl<UpdateUserBody>(this as UpdateUserBody, _$identity);

  /// Serializes this UpdateUserBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserBody&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image);

@override
String toString() {
  return 'UpdateUserBody(name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $UpdateUserBodyCopyWith<$Res>  {
  factory $UpdateUserBodyCopyWith(UpdateUserBody value, $Res Function(UpdateUserBody) _then) = _$UpdateUserBodyCopyWithImpl;
@useResult
$Res call({
 String? name, String? image
});




}
/// @nodoc
class _$UpdateUserBodyCopyWithImpl<$Res>
    implements $UpdateUserBodyCopyWith<$Res> {
  _$UpdateUserBodyCopyWithImpl(this._self, this._then);

  final UpdateUserBody _self;
  final $Res Function(UpdateUserBody) _then;

/// Create a copy of UpdateUserBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UpdateUserBody implements UpdateUserBody {
  const _UpdateUserBody({this.name, this.image});
  factory _UpdateUserBody.fromJson(Map<String, dynamic> json) => _$UpdateUserBodyFromJson(json);

@override final  String? name;
@override final  String? image;

/// Create a copy of UpdateUserBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserBodyCopyWith<_UpdateUserBody> get copyWith => __$UpdateUserBodyCopyWithImpl<_UpdateUserBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserBody&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image);

@override
String toString() {
  return 'UpdateUserBody(name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserBodyCopyWith<$Res> implements $UpdateUserBodyCopyWith<$Res> {
  factory _$UpdateUserBodyCopyWith(_UpdateUserBody value, $Res Function(_UpdateUserBody) _then) = __$UpdateUserBodyCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? image
});




}
/// @nodoc
class __$UpdateUserBodyCopyWithImpl<$Res>
    implements _$UpdateUserBodyCopyWith<$Res> {
  __$UpdateUserBodyCopyWithImpl(this._self, this._then);

  final _UpdateUserBody _self;
  final $Res Function(_UpdateUserBody) _then;

/// Create a copy of UpdateUserBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? image = freezed,}) {
  return _then(_UpdateUserBody(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
