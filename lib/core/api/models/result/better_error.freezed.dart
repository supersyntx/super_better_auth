// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'better_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BetterError {

 String get code; String get message; String? get stack;
/// Create a copy of BetterError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BetterErrorCopyWith<BetterError> get copyWith => _$BetterErrorCopyWithImpl<BetterError>(this as BetterError, _$identity);

  /// Serializes this BetterError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BetterError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.stack, stack) || other.stack == stack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,stack);

@override
String toString() {
  return 'BetterError(code: $code, message: $message, stack: $stack)';
}


}

/// @nodoc
abstract mixin class $BetterErrorCopyWith<$Res>  {
  factory $BetterErrorCopyWith(BetterError value, $Res Function(BetterError) _then) = _$BetterErrorCopyWithImpl;
@useResult
$Res call({
 String code, String message, String? stack
});




}
/// @nodoc
class _$BetterErrorCopyWithImpl<$Res>
    implements $BetterErrorCopyWith<$Res> {
  _$BetterErrorCopyWithImpl(this._self, this._then);

  final BetterError _self;
  final $Res Function(BetterError) _then;

/// Create a copy of BetterError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? stack = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stack: freezed == stack ? _self.stack : stack // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BetterError implements BetterError {
  const _BetterError({this.code = "ERROR", required this.message, required this.stack});
  factory _BetterError.fromJson(Map<String, dynamic> json) => _$BetterErrorFromJson(json);

@override@JsonKey() final  String code;
@override final  String message;
@override final  String? stack;

/// Create a copy of BetterError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BetterErrorCopyWith<_BetterError> get copyWith => __$BetterErrorCopyWithImpl<_BetterError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BetterErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BetterError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.stack, stack) || other.stack == stack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,stack);

@override
String toString() {
  return 'BetterError(code: $code, message: $message, stack: $stack)';
}


}

/// @nodoc
abstract mixin class _$BetterErrorCopyWith<$Res> implements $BetterErrorCopyWith<$Res> {
  factory _$BetterErrorCopyWith(_BetterError value, $Res Function(_BetterError) _then) = __$BetterErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message, String? stack
});




}
/// @nodoc
class __$BetterErrorCopyWithImpl<$Res>
    implements _$BetterErrorCopyWith<$Res> {
  __$BetterErrorCopyWithImpl(this._self, this._then);

  final _BetterError _self;
  final $Res Function(_BetterError) _then;

/// Create a copy of BetterError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? stack = freezed,}) {
  return _then(_BetterError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stack: freezed == stack ? _self.stack : stack // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
