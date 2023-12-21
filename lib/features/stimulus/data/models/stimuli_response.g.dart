// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stimuli_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StimuliResponseImpl _$$StimuliResponseImplFromJson(Map<String, dynamic> json) => _$StimuliResponseImpl(
      stimulusList: (json['stimulusList'] as List<dynamic>?)
          ?.map((e) => StimulusData.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$StimuliResponseImplToJson(_$StimuliResponseImpl instance) => <String, dynamic>{
      'stimulusList': instance.stimulusList?.map((e) => e.toJson()).toList(),
      'error': instance.error,
    };

_$StimulusDataImpl _$$StimulusDataImplFromJson(Map<String, dynamic> json) => _$StimulusDataImpl(
      id: json['id'] as int?,
      type: json['type'] as String?,
      value: json['value'] as int?,
      sentAt: json['sentAt'] == null ? null : DateTime.parse(json['sentAt'] as String),
      sentBy: json['sentBy'] as int?,
      sentTo: json['sentTo'] as int?,
      createdAt: json['createdAt'] == null ? null : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt'] as String),
      via: json['via'] as String?,
      message: json['message'] as String?,
      pushedAt: json['pushedAt'] == null ? null : DateTime.parse(json['pushedAt'] as String),
      failedAt: json['failedAt'] == null ? null : DateTime.parse(json['failedAt'] as String),
      failureMessage: json['failureMessage'] as String?,
      sentByApp: json['sentByApp'] as int?,
      reason: json['reason'] as String?,
      pattern: json['pattern'] as String?,
      repeat: json['repeat'] as int?,
      deleted: json['deleted'] as bool?,
      userDate: json['userDate'] as String?,
      recent: json['recent'] as bool?,
      meta: json['meta'] as String?,
    );

Map<String, dynamic> _$$StimulusDataImplToJson(_$StimulusDataImpl instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'value': instance.value,
      'sentAt': instance.sentAt?.toIso8601String(),
      'sentBy': instance.sentBy,
      'sentTo': instance.sentTo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'via': instance.via,
      'message': instance.message,
      'pushedAt': instance.pushedAt?.toIso8601String(),
      'failedAt': instance.failedAt?.toIso8601String(),
      'failureMessage': instance.failureMessage,
      'sentByApp': instance.sentByApp,
      'reason': instance.reason,
      'pattern': instance.pattern,
      'repeat': instance.repeat,
      'deleted': instance.deleted,
      'userDate': instance.userDate,
      'recent': instance.recent,
      'meta': instance.meta,
    };

_$StimulusResponseImpl _$$StimulusResponseImplFromJson(Map<String, dynamic> json) => _$StimulusResponseImpl(
      stimulus: json['stimulus'] == null ? null : StimulusData.fromJson(json['stimulus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StimulusResponseImplToJson(_$StimulusResponseImpl instance) => <String, dynamic>{
      'stimulus': instance.stimulus?.toJson(),
    };
