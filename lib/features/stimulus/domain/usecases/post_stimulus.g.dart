// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_stimulus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostStimulusParamsImpl _$$PostStimulusParamsImplFromJson(Map<String, dynamic> json) => _$PostStimulusParamsImpl(
      stimulusType: json['stimulusType'] as String? ?? "zap",
      reason: json['reason'] as String? ?? "",
      stimulusValue: json['stimulusValue'] as int? ?? 1,
    );

Map<String, dynamic> _$$PostStimulusParamsImplToJson(_$PostStimulusParamsImpl instance) => <String, dynamic>{
      'stimulusType': instance.stimulusType,
      'reason': instance.reason,
      'stimulusValue': instance.stimulusValue,
    };
