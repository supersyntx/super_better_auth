// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'callback_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CallbackBody {

 String? get code; String? get state;
/// Create a copy of CallbackBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CallbackBodyCopyWith<CallbackBody> get copyWith => _$CallbackBodyCopyWithImpl<CallbackBody>(this as CallbackBody, _$identity);

  /// Serializes this CallbackBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CallbackBody&&(identical(other.code, code) || other.code == code)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,state);

@override
String toString() {
  return 'CallbackBody(code: $code, state: $state)';
}


}

/// @nodoc
abstract mixin class $CallbackBodyCopyWith<$Res>  {
  factory $CallbackBodyCopyWith(CallbackBody value, $Res Function(CallbackBody) _then) = _$CallbackBodyCopyWithImpl;
@useResult
$Res call({
 String? code, String? state
});




}
/// @nodoc
class _$CallbackBodyCopyWithImpl<$Res>
    implements $CallbackBodyCopyWith<$Res> {
  _$CallbackBodyCopyWithImpl(this._self, this._then);

  final CallbackBody _self;
  final $Res Function(CallbackBody) _then;

/// Create a copy of CallbackBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? state = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CallbackBody implements CallbackBody {
  const _CallbackBody({this.code, this.state});
  factory _CallbackBody.fromJson(Map<String, dynamic> json) => _$CallbackBodyFromJson(json);

@override final  String? code;
@override final  String? state;

/// Create a copy of CallbackBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CallbackBodyCopyWith<_CallbackBody> get copyWith => __$CallbackBodyCopyWithImpl<_CallbackBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CallbackBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CallbackBody&&(identical(other.code, code) || other.code == code)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,state);

@override
String toString() {
  return 'CallbackBody(code: $code, state: $state)';
}


}

/// @nodoc
abstract mixin class _$CallbackBodyCopyWith<$Res> implements $CallbackBodyCopyWith<$Res> {
  factory _$CallbackBodyCopyWith(_CallbackBody value, $Res Function(_CallbackBody) _then) = __$CallbackBodyCopyWithImpl;
@override @useResult
$Res call({
 String? code, String? state
});




}
/// @nodoc
class __$CallbackBodyCopyWithImpl<$Res>
    implements _$CallbackBodyCopyWith<$Res> {
  __$CallbackBodyCopyWithImpl(this._self, this._then);

  final _CallbackBody _self;
  final $Res Function(_CallbackBody) _then;

/// Create a copy of CallbackBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? state = freezed,}) {
  return _then(_CallbackBody(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
