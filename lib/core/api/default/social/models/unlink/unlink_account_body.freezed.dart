// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unlink_account_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnlinkAccountBody {

 String get providerId; String? get accountId;
/// Create a copy of UnlinkAccountBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnlinkAccountBodyCopyWith<UnlinkAccountBody> get copyWith => _$UnlinkAccountBodyCopyWithImpl<UnlinkAccountBody>(this as UnlinkAccountBody, _$identity);

  /// Serializes this UnlinkAccountBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnlinkAccountBody&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerId,accountId);

@override
String toString() {
  return 'UnlinkAccountBody(providerId: $providerId, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class $UnlinkAccountBodyCopyWith<$Res>  {
  factory $UnlinkAccountBodyCopyWith(UnlinkAccountBody value, $Res Function(UnlinkAccountBody) _then) = _$UnlinkAccountBodyCopyWithImpl;
@useResult
$Res call({
 String providerId, String? accountId
});




}
/// @nodoc
class _$UnlinkAccountBodyCopyWithImpl<$Res>
    implements $UnlinkAccountBodyCopyWith<$Res> {
  _$UnlinkAccountBodyCopyWithImpl(this._self, this._then);

  final UnlinkAccountBody _self;
  final $Res Function(UnlinkAccountBody) _then;

/// Create a copy of UnlinkAccountBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? providerId = null,Object? accountId = freezed,}) {
  return _then(_self.copyWith(
providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UnlinkAccountBody implements UnlinkAccountBody {
  const _UnlinkAccountBody({required this.providerId, this.accountId});
  factory _UnlinkAccountBody.fromJson(Map<String, dynamic> json) => _$UnlinkAccountBodyFromJson(json);

@override final  String providerId;
@override final  String? accountId;

/// Create a copy of UnlinkAccountBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnlinkAccountBodyCopyWith<_UnlinkAccountBody> get copyWith => __$UnlinkAccountBodyCopyWithImpl<_UnlinkAccountBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnlinkAccountBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnlinkAccountBody&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerId,accountId);

@override
String toString() {
  return 'UnlinkAccountBody(providerId: $providerId, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class _$UnlinkAccountBodyCopyWith<$Res> implements $UnlinkAccountBodyCopyWith<$Res> {
  factory _$UnlinkAccountBodyCopyWith(_UnlinkAccountBody value, $Res Function(_UnlinkAccountBody) _then) = __$UnlinkAccountBodyCopyWithImpl;
@override @useResult
$Res call({
 String providerId, String? accountId
});




}
/// @nodoc
class __$UnlinkAccountBodyCopyWithImpl<$Res>
    implements _$UnlinkAccountBodyCopyWith<$Res> {
  __$UnlinkAccountBodyCopyWithImpl(this._self, this._then);

  final _UnlinkAccountBody _self;
  final $Res Function(_UnlinkAccountBody) _then;

/// Create a copy of UnlinkAccountBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? providerId = null,Object? accountId = freezed,}) {
  return _then(_UnlinkAccountBody(
providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
