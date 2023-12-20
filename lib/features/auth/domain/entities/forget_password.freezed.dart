// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgetPassword {
  bool? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgetPasswordCopyWith<ForgetPassword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordCopyWith<$Res> {
  factory $ForgetPasswordCopyWith(ForgetPassword value, $Res Function(ForgetPassword) then) =
      _$ForgetPasswordCopyWithImpl<$Res, ForgetPassword>;

  @useResult
  $Res call({bool? success});
}

/// @nodoc
class _$ForgetPasswordCopyWithImpl<$Res, $Val extends ForgetPassword> implements $ForgetPasswordCopyWith<$Res> {
  _$ForgetPasswordCopyWithImpl(this._value, this._then);

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
abstract class _$$ForgetPasswordImplCopyWith<$Res> implements $ForgetPasswordCopyWith<$Res> {
  factory _$$ForgetPasswordImplCopyWith(_$ForgetPasswordImpl value, $Res Function(_$ForgetPasswordImpl) then) =
      __$$ForgetPasswordImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({bool? success});
}

/// @nodoc
class __$$ForgetPasswordImplCopyWithImpl<$Res> extends _$ForgetPasswordCopyWithImpl<$Res, _$ForgetPasswordImpl>
    implements _$$ForgetPasswordImplCopyWith<$Res> {
  __$$ForgetPasswordImplCopyWithImpl(_$ForgetPasswordImpl _value, $Res Function(_$ForgetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$ForgetPasswordImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordImpl implements _ForgetPassword {
  const _$ForgetPasswordImpl({this.success});

  @override
  final bool? success;

  @override
  String toString() {
    return 'ForgetPassword(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordImplCopyWith<_$ForgetPasswordImpl> get copyWith =>
      __$$ForgetPasswordImplCopyWithImpl<_$ForgetPasswordImpl>(this, _$identity);
}

abstract class _ForgetPassword implements ForgetPassword {
  const factory _ForgetPassword({final bool? success}) = _$ForgetPasswordImpl;

  @override
  bool? get success;

  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordImplCopyWith<_$ForgetPasswordImpl> get copyWith => throw _privateConstructorUsedError;
}
