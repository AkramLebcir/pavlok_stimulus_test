// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_forget_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgetPasswordParams _$ForgetPasswordParamsFromJson(Map<String, dynamic> json) {
  return _ForgetPasswordParams.fromJson(json);
}

/// @nodoc
mixin _$ForgetPasswordParams {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetPasswordParamsCopyWith<ForgetPasswordParams> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordParamsCopyWith<$Res> {
  factory $ForgetPasswordParamsCopyWith(ForgetPasswordParams value, $Res Function(ForgetPasswordParams) then) =
      _$ForgetPasswordParamsCopyWithImpl<$Res, ForgetPasswordParams>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgetPasswordParamsCopyWithImpl<$Res, $Val extends ForgetPasswordParams>
    implements $ForgetPasswordParamsCopyWith<$Res> {
  _$ForgetPasswordParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetPasswordParamsImplCopyWith<$Res> implements $ForgetPasswordParamsCopyWith<$Res> {
  factory _$$ForgetPasswordParamsImplCopyWith(
          _$ForgetPasswordParamsImpl value, $Res Function(_$ForgetPasswordParamsImpl) then) =
      __$$ForgetPasswordParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgetPasswordParamsImplCopyWithImpl<$Res>
    extends _$ForgetPasswordParamsCopyWithImpl<$Res, _$ForgetPasswordParamsImpl>
    implements _$$ForgetPasswordParamsImplCopyWith<$Res> {
  __$$ForgetPasswordParamsImplCopyWithImpl(
      _$ForgetPasswordParamsImpl _value, $Res Function(_$ForgetPasswordParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgetPasswordParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetPasswordParamsImpl implements _ForgetPasswordParams {
  const _$ForgetPasswordParamsImpl({this.email = ""});

  factory _$ForgetPasswordParamsImpl.fromJson(Map<String, dynamic> json) => _$$ForgetPasswordParamsImplFromJson(json);

  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'ForgetPasswordParams(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordParamsImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordParamsImplCopyWith<_$ForgetPasswordParamsImpl> get copyWith =>
      __$$ForgetPasswordParamsImplCopyWithImpl<_$ForgetPasswordParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetPasswordParamsImplToJson(
      this,
    );
  }
}

abstract class _ForgetPasswordParams implements ForgetPasswordParams {
  const factory _ForgetPasswordParams({final String email}) = _$ForgetPasswordParamsImpl;

  factory _ForgetPasswordParams.fromJson(Map<String, dynamic> json) = _$ForgetPasswordParamsImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordParamsImplCopyWith<_$ForgetPasswordParamsImpl> get copyWith => throw _privateConstructorUsedError;
}
