// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stimulus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StimulusParams _$StimulusParamsFromJson(Map<String, dynamic> json) {
  return _StimulusParams.fromJson(json);
}

/// @nodoc
mixin _$StimulusParams {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StimulusParamsCopyWith<$Res> {
  factory $StimulusParamsCopyWith(StimulusParams value, $Res Function(StimulusParams) then) =
      _$StimulusParamsCopyWithImpl<$Res, StimulusParams>;
}

/// @nodoc
class _$StimulusParamsCopyWithImpl<$Res, $Val extends StimulusParams> implements $StimulusParamsCopyWith<$Res> {
  _$StimulusParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StimulusParamsImplCopyWith<$Res> {
  factory _$$StimulusParamsImplCopyWith(_$StimulusParamsImpl value, $Res Function(_$StimulusParamsImpl) then) =
      __$$StimulusParamsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StimulusParamsImplCopyWithImpl<$Res> extends _$StimulusParamsCopyWithImpl<$Res, _$StimulusParamsImpl>
    implements _$$StimulusParamsImplCopyWith<$Res> {
  __$$StimulusParamsImplCopyWithImpl(_$StimulusParamsImpl _value, $Res Function(_$StimulusParamsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StimulusParamsImpl implements _StimulusParams {
  const _$StimulusParamsImpl();

  factory _$StimulusParamsImpl.fromJson(Map<String, dynamic> json) => _$$StimulusParamsImplFromJson(json);

  @override
  String toString() {
    return 'StimulusParams()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$StimulusParamsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$StimulusParamsImplToJson(
      this,
    );
  }
}

abstract class _StimulusParams implements StimulusParams {
  const factory _StimulusParams() = _$StimulusParamsImpl;

  factory _StimulusParams.fromJson(Map<String, dynamic> json) = _$StimulusParamsImpl.fromJson;
}
