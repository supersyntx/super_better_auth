// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_email_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeEmailBody {

 String get newEmail; String? get callbackURL;
/// Create a copy of ChangeEmailBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeEmailBodyCopyWith<ChangeEmailBody> get copyWith => _$ChangeEmailBodyCopyWithImpl<ChangeEmailBody>(this as ChangeEmailBody, _$identity);

  /// Serializes this ChangeEmailBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeEmailBody&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newEmail,callbackURL);

@override
String toString() {
  return 'ChangeEmailBody(newEmail: $newEmail, callbackURL: $callbackURL)';
}


}

/// @nodoc
abstract mixin class $ChangeEmailBodyCopyWith<$Res>  {
  factory $ChangeEmailBodyCopyWith(ChangeEmailBody value, $Res Function(ChangeEmailBody) _then) = _$ChangeEmailBodyCopyWithImpl;
@useResult
$Res call({
 String newEmail, String? callbackURL
});




}
/// @nodoc
class _$ChangeEmailBodyCopyWithImpl<$Res>
    implements $ChangeEmailBodyCopyWith<$Res> {
  _$ChangeEmailBodyCopyWithImpl(this._self, this._then);

  final ChangeEmailBody _self;
  final $Res Function(ChangeEmailBody) _then;

/// Create a copy of ChangeEmailBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newEmail = null,Object? callbackURL = freezed,}) {
  return _then(_self.copyWith(
newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChangeEmailBody implements ChangeEmailBody {
  const _ChangeEmailBody({required this.newEmail, this.callbackURL});
  factory _ChangeEmailBody.fromJson(Map<String, dynamic> json) => _$ChangeEmailBodyFromJson(json);

@override final  String newEmail;
@override final  String? callbackURL;

/// Create a copy of ChangeEmailBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeEmailBodyCopyWith<_ChangeEmailBody> get copyWith => __$ChangeEmailBodyCopyWithImpl<_ChangeEmailBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeEmailBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeEmailBody&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newEmail,callbackURL);

@override
String toString() {
  return 'ChangeEmailBody(newEmail: $newEmail, callbackURL: $callbackURL)';
}


}

/// @nodoc
abstract mixin class _$ChangeEmailBodyCopyWith<$Res> implements $ChangeEmailBodyCopyWith<$Res> {
  factory _$ChangeEmailBodyCopyWith(_ChangeEmailBody value, $Res Function(_ChangeEmailBody) _then) = __$ChangeEmailBodyCopyWithImpl;
@override @useResult
$Res call({
 String newEmail, String? callbackURL
});




}
/// @nodoc
class __$ChangeEmailBodyCopyWithImpl<$Res>
    implements _$ChangeEmailBodyCopyWith<$Res> {
  __$ChangeEmailBodyCopyWithImpl(this._self, this._then);

  final _ChangeEmailBody _self;
  final $Res Function(_ChangeEmailBody) _then;

/// Create a copy of ChangeEmailBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newEmail = null,Object? callbackURL = freezed,}) {
  return _then(_ChangeEmailBody(
newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
