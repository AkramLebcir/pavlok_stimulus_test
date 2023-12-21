import 'package:freezed_annotation/freezed_annotation.dart';

part 'stimuli.freezed.dart';

@freezed
class Stimuli with _$Stimuli {
  const factory Stimuli({
    List<Stimulus>? stimulus,
  }) = _Stimuli;
}

@freezed
class Stimulus with _$Stimulus {
  const factory Stimulus(
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
      String? meta}) = _Stimulus;
}
