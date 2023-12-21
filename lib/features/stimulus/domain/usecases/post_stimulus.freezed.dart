// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_stimulus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostStimulusParams _$PostStimulusParamsFromJson(Map<String, dynamic> json) {
  return _PostStimulusParams.fromJson(json);
}

/// @nodoc
mixin _$PostStimulusParams {
  String get stimulusType => throw _privateConstructorUsedError;

  String get reason => throw _privateConstructorUsedError;

  int get stimulusValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStimulusParamsCopyWith<PostStimulusParams> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStimulusParamsCopyWith<$Res> {
  factory $PostStimulusParamsCopyWith(PostStimulusParams value, $Res Function(PostStimulusParams) then) =
      _$PostStimulusParamsCopyWithImpl<$Res, PostStimulusParams>;

  @useResult
  $Res call({String stimulusType, String reason, int stimulusValue});
}

/// @nodoc
class _$PostStimulusParamsCopyWithImpl<$Res, $Val extends PostStimulusParams>
    implements $PostStimulusParamsCopyWith<$Res> {
  _$PostStimulusParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stimulusType = null,
    Object? reason = null,
    Object? stimulusValue = null,
  }) {
    return _then(_value.copyWith(
      stimulusType: null == stimulusType
          ? _value.stimulusType
          : stimulusType // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      stimulusValue: null == stimulusValue
          ? _value.stimulusValue
          : stimulusValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostStimulusParamsImplCopyWith<$Res> implements $PostStimulusParamsCopyWith<$Res> {
  factory _$$PostStimulusParamsImplCopyWith(
          _$PostStimulusParamsImpl value, $Res Function(_$PostStimulusParamsImpl) then) =
      __$$PostStimulusParamsImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String stimulusType, String reason, int stimulusValue});
}

/// @nodoc
class __$$PostStimulusParamsImplCopyWithImpl<$Res>
    extends _$PostStimulusParamsCopyWithImpl<$Res, _$PostStimulusParamsImpl>
    implements _$$PostStimulusParamsImplCopyWith<$Res> {
  __$$PostStimulusParamsImplCopyWithImpl(_$PostStimulusParamsImpl _value, $Res Function(_$PostStimulusParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stimulusType = null,
    Object? reason = null,
    Object? stimulusValue = null,
  }) {
    return _then(_$PostStimulusParamsImpl(
      stimulusType: null == stimulusType
          ? _value.stimulusType
          : stimulusType // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      stimulusValue: null == stimulusValue
          ? _value.stimulusValue
          : stimulusValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostStimulusParamsImpl implements _PostStimulusParams {
  const _$PostStimulusParamsImpl({this.stimulusType = "zap", this.reason = "", this.stimulusValue = 1});

  factory _$PostStimulusParamsImpl.fromJson(Map<String, dynamic> json) => _$$PostStimulusParamsImplFromJson(json);

  @override
  @JsonKey()
  final String stimulusType;
  @override
  @JsonKey()
  final String reason;
  @override
  @JsonKey()
  final int stimulusValue;

  @override
  String toString() {
    return 'PostStimulusParams(stimulusType: $stimulusType, reason: $reason, stimulusValue: $stimulusValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStimulusParamsImpl &&
            (identical(other.stimulusType, stimulusType) || other.stimulusType == stimulusType) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.stimulusValue, stimulusValue) || other.stimulusValue == stimulusValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stimulusType, reason, stimulusValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStimulusParamsImplCopyWith<_$PostStimulusParamsImpl> get copyWith =>
      __$$PostStimulusParamsImplCopyWithImpl<_$PostStimulusParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostStimulusParamsImplToJson(
      this,
    );
  }
}

abstract class _PostStimulusParams implements PostStimulusParams {
  const factory _PostStimulusParams({final String stimulusType, final String reason, final int stimulusValue}) =
      _$PostStimulusParamsImpl;

  factory _PostStimulusParams.fromJson(Map<String, dynamic> json) = _$PostStimulusParamsImpl.fromJson;

  @override
  String get stimulusType;

  @override
  String get reason;

  @override
  int get stimulusValue;

  @override
  @JsonKey(ignore: true)
  _$$PostStimulusParamsImplCopyWith<_$PostStimulusParamsImpl> get copyWith => throw _privateConstructorUsedError;
}
