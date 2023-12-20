// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgetPasswordResponse _$ForgetPasswordResponseFromJson(Map<String, dynamic> json) {
  return _ForgetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgetPasswordResponse {
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgetPasswordResponseCopyWith<ForgetPasswordResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordResponseCopyWith<$Res> {
  factory $ForgetPasswordResponseCopyWith(ForgetPasswordResponse value, $Res Function(ForgetPasswordResponse) then) =
      _$ForgetPasswordResponseCopyWithImpl<$Res, ForgetPasswordResponse>;

  @useResult
  $Res call({bool? success});
}

/// @nodoc
class _$ForgetPasswordResponseCopyWithImpl<$Res, $Val extends ForgetPasswordResponse>
    implements $ForgetPasswordResponseCopyWith<$Res> {
  _$ForgetPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetPasswordResponseImplCopyWith<$Res> implements $ForgetPasswordResponseCopyWith<$Res> {
  factory _$$ForgetPasswordResponseImplCopyWith(
          _$ForgetPasswordResponseImpl value, $Res Function(_$ForgetPasswordResponseImpl) then) =
      __$$ForgetPasswordResponseImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({bool? success});
}

/// @nodoc
class __$$ForgetPasswordResponseImplCopyWithImpl<$Res>
    extends _$ForgetPasswordResponseCopyWithImpl<$Res, _$ForgetPasswordResponseImpl>
    implements _$$ForgetPasswordResponseImplCopyWith<$Res> {
  __$$ForgetPasswordResponseImplCopyWithImpl(
      _$ForgetPasswordResponseImpl _value, $Res Function(_$ForgetPasswordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$ForgetPasswordResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetPasswordResponseImpl extends _ForgetPasswordResponse {
  const _$ForgetPasswordResponseImpl({this.success}) : super._();

  factory _$ForgetPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetPasswordResponseImplFromJson(json);

  @override
  final bool? success;

  @override
  String toString() {
    return 'ForgetPasswordResponse(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordResponseImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordResponseImplCopyWith<_$ForgetPasswordResponseImpl> get copyWith =>
      __$$ForgetPasswordResponseImplCopyWithImpl<_$ForgetPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgetPasswordResponse extends ForgetPasswordResponse {
  const factory _ForgetPasswordResponse({final bool? success}) = _$ForgetPasswordResponseImpl;

  const _ForgetPasswordResponse._() : super._();

  factory _ForgetPasswordResponse.fromJson(Map<String, dynamic> json) = _$ForgetPasswordResponseImpl.fromJson;

  @override
  bool? get success;

  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordResponseImplCopyWith<_$ForgetPasswordResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
