// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stimuli.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Stimuli {
  List<Stimulus>? get stimulus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StimuliCopyWith<Stimuli> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StimuliCopyWith<$Res> {
  factory $StimuliCopyWith(Stimuli value, $Res Function(Stimuli) then) = _$StimuliCopyWithImpl<$Res, Stimuli>;
  @useResult
  $Res call({List<Stimulus>? stimulus});
}

/// @nodoc
class _$StimuliCopyWithImpl<$Res, $Val extends Stimuli> implements $StimuliCopyWith<$Res> {
  _$StimuliCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stimulus = freezed,
  }) {
    return _then(_value.copyWith(
      stimulus: freezed == stimulus
          ? _value.stimulus
          : stimulus // ignore: cast_nullable_to_non_nullable
              as List<Stimulus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StimuliImplCopyWith<$Res> implements $StimuliCopyWith<$Res> {
  factory _$$StimuliImplCopyWith(_$StimuliImpl value, $Res Function(_$StimuliImpl) then) =
      __$$StimuliImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Stimulus>? stimulus});
}

/// @nodoc
class __$$StimuliImplCopyWithImpl<$Res> extends _$StimuliCopyWithImpl<$Res, _$StimuliImpl>
    implements _$$StimuliImplCopyWith<$Res> {
  __$$StimuliImplCopyWithImpl(_$StimuliImpl _value, $Res Function(_$StimuliImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stimulus = freezed,
  }) {
    return _then(_$StimuliImpl(
      stimulus: freezed == stimulus
          ? _value._stimulus
          : stimulus // ignore: cast_nullable_to_non_nullable
              as List<Stimulus>?,
    ));
  }
}

/// @nodoc

class _$StimuliImpl implements _Stimuli {
  const _$StimuliImpl({final List<Stimulus>? stimulus}) : _stimulus = stimulus;

  final List<Stimulus>? _stimulus;
  @override
  List<Stimulus>? get stimulus {
    final value = _stimulus;
    if (value == null) return null;
    if (_stimulus is EqualUnmodifiableListView) return _stimulus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Stimuli(stimulus: $stimulus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StimuliImpl &&
            const DeepCollectionEquality().equals(other._stimulus, _stimulus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_stimulus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StimuliImplCopyWith<_$StimuliImpl> get copyWith => __$$StimuliImplCopyWithImpl<_$StimuliImpl>(this, _$identity);
}

abstract class _Stimuli implements Stimuli {
  const factory _Stimuli({final List<Stimulus>? stimulus}) = _$StimuliImpl;

  @override
  List<Stimulus>? get stimulus;
  @override
  @JsonKey(ignore: true)
  _$$StimuliImplCopyWith<_$StimuliImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Stimulus {
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;
  int? get sentBy => throw _privateConstructorUsedError;
  int? get sentTo => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get via => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DateTime? get pushedAt => throw _privateConstructorUsedError;
  DateTime? get failedAt => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  int? get sentByApp => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get pattern => throw _privateConstructorUsedError;
  int? get repeat => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  String? get userDate => throw _privateConstructorUsedError;
  bool? get recent => throw _privateConstructorUsedError;
  String? get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StimulusCopyWith<Stimulus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StimulusCopyWith<$Res> {
  factory $StimulusCopyWith(Stimulus value, $Res Function(Stimulus) then) = _$StimulusCopyWithImpl<$Res, Stimulus>;
  @useResult
  $Res call(
      {int? id,
      String? type,
      int? value,
      DateTime? sentAt,
      int? sentBy,
      int? sentTo,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? via,
      String? message,
      DateTime? pushedAt,
      DateTime? failedAt,
      String? failureMessage,
      int? sentByApp,
      String? reason,
      String? pattern,
      int? repeat,
      bool? deleted,
      String? userDate,
      bool? recent,
      String? meta});
}

/// @nodoc
class _$StimulusCopyWithImpl<$Res, $Val extends Stimulus> implements $StimulusCopyWith<$Res> {
  _$StimulusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? sentAt = freezed,
    Object? sentBy = freezed,
    Object? sentTo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? via = freezed,
    Object? message = freezed,
    Object? pushedAt = freezed,
    Object? failedAt = freezed,
    Object? failureMessage = freezed,
    Object? sentByApp = freezed,
    Object? reason = freezed,
    Object? pattern = freezed,
    Object? repeat = freezed,
    Object? deleted = freezed,
    Object? userDate = freezed,
    Object? recent = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentBy: freezed == sentBy
          ? _value.sentBy
          : sentBy // ignore: cast_nullable_to_non_nullable
              as int?,
      sentTo: freezed == sentTo
          ? _value.sentTo
          : sentTo // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      via: freezed == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pushedAt: freezed == pushedAt
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      failedAt: freezed == failedAt
          ? _value.failedAt
          : failedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      sentByApp: freezed == sentByApp
          ? _value.sentByApp
          : sentByApp // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as int?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      userDate: freezed == userDate
          ? _value.userDate
          : userDate // ignore: cast_nullable_to_non_nullable
              as String?,
      recent: freezed == recent
          ? _value.recent
          : recent // ignore: cast_nullable_to_non_nullable
              as bool?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StimulusImplCopyWith<$Res> implements $StimulusCopyWith<$Res> {
  factory _$$StimulusImplCopyWith(_$StimulusImpl value, $Res Function(_$StimulusImpl) then) =
      __$$StimulusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? type,
      int? value,
      DateTime? sentAt,
      int? sentBy,
      int? sentTo,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? via,
      String? message,
      DateTime? pushedAt,
      DateTime? failedAt,
      String? failureMessage,
      int? sentByApp,
      String? reason,
      String? pattern,
      int? repeat,
      bool? deleted,
      String? userDate,
      bool? recent,
      String? meta});
}

/// @nodoc
class __$$StimulusImplCopyWithImpl<$Res> extends _$StimulusCopyWithImpl<$Res, _$StimulusImpl>
    implements _$$StimulusImplCopyWith<$Res> {
  __$$StimulusImplCopyWithImpl(_$StimulusImpl _value, $Res Function(_$StimulusImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? sentAt = freezed,
    Object? sentBy = freezed,
    Object? sentTo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? via = freezed,
    Object? message = freezed,
    Object? pushedAt = freezed,
    Object? failedAt = freezed,
    Object? failureMessage = freezed,
    Object? sentByApp = freezed,
    Object? reason = freezed,
    Object? pattern = freezed,
    Object? repeat = freezed,
    Object? deleted = freezed,
    Object? userDate = freezed,
    Object? recent = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$StimulusImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentBy: freezed == sentBy
          ? _value.sentBy
          : sentBy // ignore: cast_nullable_to_non_nullable
              as int?,
      sentTo: freezed == sentTo
          ? _value.sentTo
          : sentTo // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      via: freezed == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pushedAt: freezed == pushedAt
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      failedAt: freezed == failedAt
          ? _value.failedAt
          : failedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      sentByApp: freezed == sentByApp
          ? _value.sentByApp
          : sentByApp // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as int?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      userDate: freezed == userDate
          ? _value.userDate
          : userDate // ignore: cast_nullable_to_non_nullable
              as String?,
      recent: freezed == recent
          ? _value.recent
          : recent // ignore: cast_nullable_to_non_nullable
              as bool?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StimulusImpl implements _Stimulus {
  const _$StimulusImpl(
      {this.id,
      this.type,
      this.value,
      this.sentAt,
      this.sentBy,
      this.sentTo,
      this.createdAt,
      this.updatedAt,
      this.via,
      this.message,
      this.pushedAt,
      this.failedAt,
      this.failureMessage,
      this.sentByApp,
      this.reason,
      this.pattern,
      this.repeat,
      this.deleted,
      this.userDate,
      this.recent,
      this.meta});

  @override
  final int? id;
  @override
  final String? type;
  @override
  final int? value;
  @override
  final DateTime? sentAt;
  @override
  final int? sentBy;
  @override
  final int? sentTo;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? via;
  @override
  final String? message;
  @override
  final DateTime? pushedAt;
  @override
  final DateTime? failedAt;
  @override
  final String? failureMessage;
  @override
  final int? sentByApp;
  @override
  final String? reason;
  @override
  final String? pattern;
  @override
  final int? repeat;
  @override
  final bool? deleted;
  @override
  final String? userDate;
  @override
  final bool? recent;
  @override
  final String? meta;

  @override
  String toString() {
    return 'Stimulus(id: $id, type: $type, value: $value, sentAt: $sentAt, sentBy: $sentBy, sentTo: $sentTo, createdAt: $createdAt, updatedAt: $updatedAt, via: $via, message: $message, pushedAt: $pushedAt, failedAt: $failedAt, failureMessage: $failureMessage, sentByApp: $sentByApp, reason: $reason, pattern: $pattern, repeat: $repeat, deleted: $deleted, userDate: $userDate, recent: $recent, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StimulusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.sentBy, sentBy) || other.sentBy == sentBy) &&
            (identical(other.sentTo, sentTo) || other.sentTo == sentTo) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.via, via) || other.via == via) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pushedAt, pushedAt) || other.pushedAt == pushedAt) &&
            (identical(other.failedAt, failedAt) || other.failedAt == failedAt) &&
            (identical(other.failureMessage, failureMessage) || other.failureMessage == failureMessage) &&
            (identical(other.sentByApp, sentByApp) || other.sentByApp == sentByApp) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.userDate, userDate) || other.userDate == userDate) &&
            (identical(other.recent, recent) || other.recent == recent) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        value,
        sentAt,
        sentBy,
        sentTo,
        createdAt,
        updatedAt,
        via,
        message,
        pushedAt,
        failedAt,
        failureMessage,
        sentByApp,
        reason,
        pattern,
        repeat,
        deleted,
        userDate,
        recent,
        meta
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StimulusImplCopyWith<_$StimulusImpl> get copyWith =>
      __$$StimulusImplCopyWithImpl<_$StimulusImpl>(this, _$identity);
}

abstract class _Stimulus implements Stimulus {
  const factory _Stimulus(
      {final int? id,
      final String? type,
      final int? value,
      final DateTime? sentAt,
      final int? sentBy,
      final int? sentTo,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? via,
      final String? message,
      final DateTime? pushedAt,
      final DateTime? failedAt,
      final String? failureMessage,
      final int? sentByApp,
      final String? reason,
      final String? pattern,
      final int? repeat,
      final bool? deleted,
      final String? userDate,
      final bool? recent,
      final String? meta}) = _$StimulusImpl;

  @override
  int? get id;
  @override
  String? get type;
  @override
  int? get value;
  @override
  DateTime? get sentAt;
  @override
  int? get sentBy;
  @override
  int? get sentTo;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get via;
  @override
  String? get message;
  @override
  DateTime? get pushedAt;
  @override
  DateTime? get failedAt;
  @override
  String? get failureMessage;
  @override
  int? get sentByApp;
  @override
  String? get reason;
  @override
  String? get pattern;
  @override
  int? get repeat;
  @override
  bool? get deleted;
  @override
  String? get userDate;
  @override
  bool? get recent;
  @override
  String? get meta;
  @override
  @JsonKey(ignore: true)
  _$$StimulusImplCopyWith<_$StimulusImpl> get copyWith => throw _privateConstructorUsedError;
}
