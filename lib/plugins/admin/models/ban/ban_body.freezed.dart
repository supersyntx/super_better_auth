// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ban_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BanBody {

 String get userId; String get banReason; String? get banExpiresIn;
/// Create a copy of BanBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BanBodyCopyWith<BanBody> get copyWith => _$BanBodyCopyWithImpl<BanBody>(this as BanBody, _$identity);

  /// Serializes this BanBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BanBody&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.banReason, banReason) || other.banReason == banReason)&&(identical(other.banExpiresIn, banExpiresIn) || other.banExpiresIn == banExpiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,banReason,banExpiresIn);

@override
String toString() {
  return 'BanBody(userId: $userId, banReason: $banReason, banExpiresIn: $banExpiresIn)';
}


}

/// @nodoc
abstract mixin class $BanBodyCopyWith<$Res>  {
  factory $BanBodyCopyWith(BanBody value, $Res Function(BanBody) _then) = _$BanBodyCopyWithImpl;
@useResult
$Res call({
 String userId, String banReason, String? banExpiresIn
});




}
/// @nodoc
class _$BanBodyCopyWithImpl<$Res>
    implements $BanBodyCopyWith<$Res> {
  _$BanBodyCopyWithImpl(this._self, this._then);

  final BanBody _self;
  final $Res Function(BanBody) _then;

/// Create a copy of BanBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? banReason = null,Object? banExpiresIn = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,banReason: null == banReason ? _self.banReason : banReason // ignore: cast_nullable_to_non_nullable
as String,banExpiresIn: freezed == banExpiresIn ? _self.banExpiresIn : banExpiresIn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BanBody implements BanBody {
  const _BanBody({required this.userId, this.banReason = "", this.banExpiresIn});
  factory _BanBody.fromJson(Map<String, dynamic> json) => _$BanBodyFromJson(json);

@override final  String userId;
@override@JsonKey() final  String banReason;
@override final  String? banExpiresIn;

/// Create a copy of BanBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BanBodyCopyWith<_BanBody> get copyWith => __$BanBodyCopyWithImpl<_BanBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BanBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BanBody&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.banReason, banReason) || other.banReason == banReason)&&(identical(other.banExpiresIn, banExpiresIn) || other.banExpiresIn == banExpiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,banReason,banExpiresIn);

@override
String toString() {
  return 'BanBody(userId: $userId, banReason: $banReason, banExpiresIn: $banExpiresIn)';
}


}

/// @nodoc
abstract mixin class _$BanBodyCopyWith<$Res> implements $BanBodyCopyWith<$Res> {
  factory _$BanBodyCopyWith(_BanBody value, $Res Function(_BanBody) _then) = __$BanBodyCopyWithImpl;
@override @useResult
$Res call({
 String userId, String banReason, String? banExpiresIn
});




}
/// @nodoc
class __$BanBodyCopyWithImpl<$Res>
    implements _$BanBodyCopyWith<$Res> {
  __$BanBodyCopyWithImpl(this._self, this._then);

  final _BanBody _self;
  final $Res Function(_BanBody) _then;

/// Create a copy of BanBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? banReason = null,Object? banExpiresIn = freezed,}) {
  return _then(_BanBody(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,banReason: null == banReason ? _self.banReason : banReason // ignore: cast_nullable_to_non_nullable
as String,banExpiresIn: freezed == banExpiresIn ? _self.banExpiresIn : banExpiresIn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
