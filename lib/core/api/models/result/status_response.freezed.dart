// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatusResponse {

 bool get status; String? get message;
/// Create a copy of StatusResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusResponseCopyWith<StatusResponse> get copyWith => _$StatusResponseCopyWithImpl<StatusResponse>(this as StatusResponse, _$identity);

  /// Serializes this StatusResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'StatusResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $StatusResponseCopyWith<$Res>  {
  factory $StatusResponseCopyWith(StatusResponse value, $Res Function(StatusResponse) _then) = _$StatusResponseCopyWithImpl;
@useResult
$Res call({
 bool status, String? message
});




}
/// @nodoc
class _$StatusResponseCopyWithImpl<$Res>
    implements $StatusResponseCopyWith<$Res> {
  _$StatusResponseCopyWithImpl(this._self, this._then);

  final StatusResponse _self;
  final $Res Function(StatusResponse) _then;

/// Create a copy of StatusResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StatusResponse implements StatusResponse {
  const _StatusResponse({required this.status, this.message});
  factory _StatusResponse.fromJson(Map<String, dynamic> json) => _$StatusResponseFromJson(json);

@override final  bool status;
@override final  String? message;

/// Create a copy of StatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusResponseCopyWith<_StatusResponse> get copyWith => __$StatusResponseCopyWithImpl<_StatusResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'StatusResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$StatusResponseCopyWith<$Res> implements $StatusResponseCopyWith<$Res> {
  factory _$StatusResponseCopyWith(_StatusResponse value, $Res Function(_StatusResponse) _then) = __$StatusResponseCopyWithImpl;
@override @useResult
$Res call({
 bool status, String? message
});




}
/// @nodoc
class __$StatusResponseCopyWithImpl<$Res>
    implements _$StatusResponseCopyWith<$Res> {
  __$StatusResponseCopyWithImpl(this._self, this._then);

  final _StatusResponse _self;
  final $Res Function(_StatusResponse) _then;

/// Create a copy of StatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_StatusResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
