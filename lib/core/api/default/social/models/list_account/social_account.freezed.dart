// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialAccount {

 String get id; String get provider; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of SocialAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialAccountCopyWith<SocialAccount> get copyWith => _$SocialAccountCopyWithImpl<SocialAccount>(this as SocialAccount, _$identity);

  /// Serializes this SocialAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,provider,createdAt,updatedAt);

@override
String toString() {
  return 'SocialAccount(id: $id, provider: $provider, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SocialAccountCopyWith<$Res>  {
  factory $SocialAccountCopyWith(SocialAccount value, $Res Function(SocialAccount) _then) = _$SocialAccountCopyWithImpl;
@useResult
$Res call({
 String id, String provider, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$SocialAccountCopyWithImpl<$Res>
    implements $SocialAccountCopyWith<$Res> {
  _$SocialAccountCopyWithImpl(this._self, this._then);

  final SocialAccount _self;
  final $Res Function(SocialAccount) _then;

/// Create a copy of SocialAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? provider = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SocialAccount implements SocialAccount {
  const _SocialAccount({required this.id, required this.provider, this.createdAt = null, this.updatedAt = null});
  factory _SocialAccount.fromJson(Map<String, dynamic> json) => _$SocialAccountFromJson(json);

@override final  String id;
@override final  String provider;
@override@JsonKey() final  DateTime? createdAt;
@override@JsonKey() final  DateTime? updatedAt;

/// Create a copy of SocialAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialAccountCopyWith<_SocialAccount> get copyWith => __$SocialAccountCopyWithImpl<_SocialAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,provider,createdAt,updatedAt);

@override
String toString() {
  return 'SocialAccount(id: $id, provider: $provider, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SocialAccountCopyWith<$Res> implements $SocialAccountCopyWith<$Res> {
  factory _$SocialAccountCopyWith(_SocialAccount value, $Res Function(_SocialAccount) _then) = __$SocialAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String provider, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$SocialAccountCopyWithImpl<$Res>
    implements _$SocialAccountCopyWith<$Res> {
  __$SocialAccountCopyWithImpl(this._self, this._then);

  final _SocialAccount _self;
  final $Res Function(_SocialAccount) _then;

/// Create a copy of SocialAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? provider = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_SocialAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
