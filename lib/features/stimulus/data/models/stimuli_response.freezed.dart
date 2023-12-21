// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stimuli_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StimuliResponse _$StimuliResponseFromJson(Map<String, dynamic> json) {
  return _StimuliResponse.fromJson(json);
}

/// @nodoc
mixin _$StimuliResponse {
  List<StimulusData>? get stimulusList => throw _privateConstructorUsedError;

  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StimuliResponseCopyWith<StimuliResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StimuliResponseCopyWith<$Res> {
  factory $StimuliResponseCopyWith(StimuliResponse value, $Res Function(StimuliResponse) then) =
      _$StimuliResponseCopyWithImpl<$Res, StimuliResponse>;

  @useResult
  $Res call({List<StimulusData>? stimulusList, String? error});
}

/// @nodoc
class _$StimuliResponseCopyWithImpl<$Res, $Val extends StimuliResponse> implements $StimuliResponseCopyWith<$Res> {
  _$StimuliResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stimulusList = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      stimulusList: freezed == stimulusList
          ? _value.stimulusList
          : stimulusList // ignore: cast_nullable_to_non_nullable
              as List<StimulusData>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StimuliResponseImplCopyWith<$Res> implements $StimuliResponseCopyWith<$Res> {
  factory _$$StimuliResponseImplCopyWith(_$StimuliResponseImpl value, $Res Function(_$StimuliResponseImpl) then) =
      __$$StimuliResponseImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({List<StimulusData>? stimulusList, String? error});
}

/// @nodoc
class __$$StimuliResponseImplCopyWithImpl<$Res> extends _$StimuliResponseCopyWithImpl<$Res, _$StimuliResponseImpl>
    implements _$$StimuliResponseImplCopyWith<$Res> {
  __$$StimuliResponseImplCopyWithImpl(_$StimuliResponseImpl _value, $Res Function(_$StimuliResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stimulusList = freezed,
    Object? error = freezed,
  }) {
    return _then(_$StimuliResponseImpl(
      stimulusList: freezed == stimulusList
          ? _value._stimulusList
          : stimulusList // ignore: cast_nullable_to_non_nullable
              as List<StimulusData>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StimuliResponseImpl extends _StimuliResponse {
  const _$StimuliResponseImpl({final List<StimulusData>? stimulusList, this.error})
      : _stimulusList = stimulusList,
        super._();

  factory _$StimuliResponseImpl.fromJson(Map<String, dynamic> json) => _$$StimuliResponseImplFromJson(json);

  final List<StimulusData>? _stimulusList;

  @override
  List<StimulusData>? get stimulusList {
    final value = _stimulusList;
    if (value == null) return null;
    if (_stimulusList is EqualUnmodifiableListView) return _stimulusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'StimuliResponse(stimulusList: $stimulusList, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StimuliResponseImpl &&
            const DeepCollectionEquality().equals(other._stimulusList, _stimulusList) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_stimulusList), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StimuliResponseImplCopyWith<_$StimuliResponseImpl> get copyWith =>
      __$$StimuliResponseImplCopyWithImpl<_$StimuliResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StimuliResponseImplToJson(
      this,
    );
  }
}

abstract class _StimuliResponse extends StimuliResponse {
  const factory _StimuliResponse({final List<StimulusData>? stimulusList, final String? error}) = _$StimuliResponseImpl;

  const _StimuliResponse._() : super._();

  factory _StimuliResponse.fromJson(Map<String, dynamic> json) = _$StimuliResponseImpl.fromJson;

  @override
  List<StimulusData>? get stimulusList;

  @override
  String? get error;

  @override
  @JsonKey(ignore: true)
  _$$StimuliResponseImplCopyWith<_$StimuliResponseImpl> get copyWith => throw _privateConstructorUsedError;
}

StimulusData _$StimulusDataFromJson(Map<String, dynamic> json) {
  return _StimulusData.fromJson(json);
}

/// @nodoc
mixin _$StimulusData {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StimulusDataCopyWith<StimulusData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StimulusDataCopyWith<$Res> {
  factory $StimulusDataCopyWith(StimulusData value, $Res Function(StimulusData) then) =
      _$StimulusDataCopyWithImpl<$Res, StimulusData>;

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
class _$StimulusDataCopyWithImpl<$Res, $Val extends StimulusData> implements $StimulusDataCopyWith<$Res> {
  _$StimulusDataCopyWithImpl(this._value, this._then);

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
abstract class _$$StimulusDataImplCopyWith<$Res> implements $StimulusDataCopyWith<$Res> {
  factory _$$StimulusDataImplCopyWith(_$StimulusDataImpl value, $Res Function(_$StimulusDataImpl) then) =
      __$$StimulusDataImplCopyWithImpl<$Res>;

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
class __$$StimulusDataImplCopyWithImpl<$Res> extends _$StimulusDataCopyWithImpl<$Res, _$StimulusDataImpl>
    implements _$$StimulusDataImplCopyWith<$Res> {
  __$$StimulusDataImplCopyWithImpl(_$StimulusDataImpl _value, $Res Function(_$StimulusDataImpl) _then)
      : super(_value, _then);

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
    return _then(_$StimulusDataImpl(
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
@JsonSerializable()
class _$StimulusDataImpl extends _StimulusData {
  const _$StimulusDataImpl(
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
      this.meta})
      : super._();

  factory _$StimulusDataImpl.fromJson(Map<String, dynamic> json) => _$$StimulusDataImplFromJson(json);

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
    return 'StimulusData(id: $id, type: $type, value: $value, sentAt: $sentAt, sentBy: $sentBy, sentTo: $sentTo, createdAt: $createdAt, updatedAt: $updatedAt, via: $via, message: $message, pushedAt: $pushedAt, failedAt: $failedAt, failureMessage: $failureMessage, sentByApp: $sentByApp, reason: $reason, pattern: $pattern, repeat: $repeat, deleted: $deleted, userDate: $userDate, recent: $recent, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StimulusDataImpl &&
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

  @JsonKey(ignore: true)
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
  _$$StimulusDataImplCopyWith<_$StimulusDataImpl> get copyWith =>
      __$$StimulusDataImplCopyWithImpl<_$StimulusDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StimulusDataImplToJson(
      this,
    );
  }
}

abstract class _StimulusData extends StimulusData {
  const factory _StimulusData(
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
      final String? meta}) = _$StimulusDataImpl;

  const _StimulusData._() : super._();

  factory _StimulusData.fromJson(Map<String, dynamic> json) = _$StimulusDataImpl.fromJson;

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
  _$$StimulusDataImplCopyWith<_$StimulusDataImpl> get copyWith => throw _privateConstructorUsedError;
}

StimulusResponse _$StimulusResponseFromJson(Map<String, dynamic> json) {
  return _StimulusResponse.fromJson(json);
}

/// @nodoc
mixin _$StimulusResponse {
  StimulusData? get stimulus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StimulusResponseCopyWith<StimulusResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StimulusResponseCopyWith<$Res> {
  factory $StimulusResponseCopyWith(StimulusResponse value, $Res Function(StimulusResponse) then) =
      _$StimulusResponseCopyWithImpl<$Res, StimulusResponse>;

  @useResult
  $Res call({StimulusData? stimulus});

  $StimulusDataCopyWith<$Res>? get stimulus;
}

/// @nodoc
class _$StimulusResponseCopyWithImpl<$Res, $Val extends StimulusResponse> implements $StimulusResponseCopyWith<$Res> {
  _$StimulusResponseCopyWithImpl(this._value, this._then);

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
              as StimulusData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StimulusDataCopyWith<$Res>? get stimulus {
    if (_value.stimulus == null) {
      return null;
    }

    return $StimulusDataCopyWith<$Res>(_value.stimulus!, (value) {
      return _then(_value.copyWith(stimulus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StimulusResponseImplCopyWith<$Res> implements $StimulusResponseCopyWith<$Res> {
  factory _$$StimulusResponseImplCopyWith(_$StimulusResponseImpl value, $Res Function(_$StimulusResponseImpl) then) =
      __$$StimulusResponseImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({StimulusData? stimulus});

  @override
  $StimulusDataCopyWith<$Res>? get stimulus;
}

/// @nodoc
class __$$StimulusResponseImplCopyWithImpl<$Res> extends _$StimulusResponseCopyWithImpl<$Res, _$StimulusResponseImpl>
    implements _$$StimulusResponseImplCopyWith<$Res> {
  __$$StimulusResponseImplCopyWithImpl(_$StimulusResponseImpl _value, $Res Function(_$StimulusResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stimulus = freezed,
  }) {
    return _then(_$StimulusResponseImpl(
      stimulus: freezed == stimulus
          ? _value.stimulus
          : stimulus // ignore: cast_nullable_to_non_nullable
              as StimulusData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StimulusResponseImpl extends _StimulusResponse {
  const _$StimulusResponseImpl({this.stimulus}) : super._();

  factory _$StimulusResponseImpl.fromJson(Map<String, dynamic> json) => _$$StimulusResponseImplFromJson(json);

  @override
  final StimulusData? stimulus;

  @override
  String toString() {
    return 'StimulusResponse(stimulus: $stimulus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StimulusResponseImpl &&
            (identical(other.stimulus, stimulus) || other.stimulus == stimulus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stimulus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StimulusResponseImplCopyWith<_$StimulusResponseImpl> get copyWith =>
      __$$StimulusResponseImplCopyWithImpl<_$StimulusResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StimulusResponseImplToJson(
      this,
    );
  }
}

abstract class _StimulusResponse extends StimulusResponse {
  const factory _StimulusResponse({final StimulusData? stimulus}) = _$StimulusResponseImpl;

  const _StimulusResponse._() : super._();

  factory _StimulusResponse.fromJson(Map<String, dynamic> json) = _$StimulusResponseImpl.fromJson;

  @override
  StimulusData? get stimulus;

  @override
  @JsonKey(ignore: true)
  _$$StimulusResponseImplCopyWith<_$StimulusResponseImpl> get copyWith => throw _privateConstructorUsedError;
}
