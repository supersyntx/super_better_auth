// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_email_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerificationEmailBody {

 String get email; String? get callbackURL;
/// Create a copy of VerificationEmailBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationEmailBodyCopyWith<VerificationEmailBody> get copyWith => _$VerificationEmailBodyCopyWithImpl<VerificationEmailBody>(this as VerificationEmailBody, _$identity);

  /// Serializes this VerificationEmailBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationEmailBody&&(identical(other.email, email) || other.email == email)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,callbackURL);

@override
String toString() {
  return 'VerificationEmailBody(email: $email, callbackURL: $callbackURL)';
}


}

/// @nodoc
abstract mixin class $VerificationEmailBodyCopyWith<$Res>  {
  factory $VerificationEmailBodyCopyWith(VerificationEmailBody value, $Res Function(VerificationEmailBody) _then) = _$VerificationEmailBodyCopyWithImpl;
@useResult
$Res call({
 String email, String? callbackURL
});




}
/// @nodoc
class _$VerificationEmailBodyCopyWithImpl<$Res>
    implements $VerificationEmailBodyCopyWith<$Res> {
  _$VerificationEmailBodyCopyWithImpl(this._self, this._then);

  final VerificationEmailBody _self;
  final $Res Function(VerificationEmailBody) _then;

/// Create a copy of VerificationEmailBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? callbackURL = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VerificationEmailBody implements VerificationEmailBody {
  const _VerificationEmailBody({required this.email, this.callbackURL});
  factory _VerificationEmailBody.fromJson(Map<String, dynamic> json) => _$VerificationEmailBodyFromJson(json);

@override final  String email;
@override final  String? callbackURL;

/// Create a copy of VerificationEmailBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerificationEmailBodyCopyWith<_VerificationEmailBody> get copyWith => __$VerificationEmailBodyCopyWithImpl<_VerificationEmailBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerificationEmailBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerificationEmailBody&&(identical(other.email, email) || other.email == email)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,callbackURL);

@override
String toString() {
  return 'VerificationEmailBody(email: $email, callbackURL: $callbackURL)';
}


}

/// @nodoc
abstract mixin class _$VerificationEmailBodyCopyWith<$Res> implements $VerificationEmailBodyCopyWith<$Res> {
  factory _$VerificationEmailBodyCopyWith(_VerificationEmailBody value, $Res Function(_VerificationEmailBody) _then) = __$VerificationEmailBodyCopyWithImpl;
@override @useResult
$Res call({
 String email, String? callbackURL
});




}
/// @nodoc
class __$VerificationEmailBodyCopyWithImpl<$Res>
    implements _$VerificationEmailBodyCopyWith<$Res> {
  __$VerificationEmailBodyCopyWithImpl(this._self, this._then);

  final _VerificationEmailBody _self;
  final $Res Function(_VerificationEmailBody) _then;

/// Create a copy of VerificationEmailBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? callbackURL = freezed,}) {
  return _then(_VerificationEmailBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
