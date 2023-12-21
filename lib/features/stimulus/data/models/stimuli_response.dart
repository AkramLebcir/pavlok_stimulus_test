import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/features/stimulus/stimulus.dart';

part 'stimuli_response.freezed.dart';
part 'stimuli_response.g.dart';

@freezed
class StimuliResponse with _$StimuliResponse {
  const factory StimuliResponse({
    List<StimulusData>? stimulusList,
    String? error,
  }) = _StimuliResponse;

  const StimuliResponse._();

  factory StimuliResponse.fromJson(Map<String, dynamic> json) => _$StimuliResponseFromJson(json);

  Stimuli toEntity() {
    final listStimulus = stimulusList!
        .map<Stimulus>(
          (model) => Stimulus(
            id: model.id,
            type: model.type,
            value: model.value,
            sentAt: model.sentAt,
            sentBy: model.sentBy,
            sentTo: model.sentTo,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            via: model.via,
            message: model.message,
            pushedAt: model.pushedAt,
            failedAt: model.failedAt,
            failureMessage: model.failureMessage,
            sentByApp: model.sentByApp,
            reason: model.reason,
            pattern: model.pattern,
            repeat: model.repeat,
            deleted: model.deleted,
            userDate: model.userDate,
            recent: model.recent,
            meta: model.meta,
          ),
        )
        .toList();

    return Stimuli(
      stimulus: listStimulus,
    );
  }
}

@freezed
class StimulusData with _$StimulusData {
  const factory StimulusData({
    int? id,
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
    String? meta,
  }) = _StimulusData;

  const StimulusData._();

  factory StimulusData.fromJson(Map<String, dynamic> json) => _$StimulusDataFromJson(json);
}

@freezed
class StimulusResponse with _$StimulusResponse {
  const factory StimulusResponse({
    StimulusData? stimulus,
  }) = _StimulusResponse;

  const StimulusResponse._();

  factory StimulusResponse.fromJson(Map<String, dynamic> json) => _$StimulusResponseFromJson(json);

  Stimulus toEntity() {
    return Stimulus(
        id: stimulus?.id,
        type: stimulus?.type,
        value: stimulus?.value,
        sentAt: stimulus?.sentAt,
        sentBy: stimulus?.sentBy,
        sentTo: stimulus?.sentTo,
        createdAt: stimulus?.createdAt,
        updatedAt: stimulus?.updatedAt,
        via: stimulus?.via,
        message: stimulus?.message,
        pushedAt: stimulus?.pushedAt,
        failedAt: stimulus?.failedAt,
        failureMessage: stimulus?.failureMessage,
        sentByApp: stimulus?.sentByApp,
        reason: stimulus?.reason,
        pattern: stimulus?.pattern,
        repeat: stimulus?.repeat,
        deleted: stimulus?.deleted,
        userDate: stimulus?.userDate,
        recent: stimulus?.recent,
        meta: stimulus?.meta);
  }
}
