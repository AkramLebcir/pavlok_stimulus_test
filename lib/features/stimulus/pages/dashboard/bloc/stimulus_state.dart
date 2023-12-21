part of 'stimulus_bloc.dart';

@freezed
class StimulusState with _$StimulusState {
  const factory StimulusState.loading() = _Loading;

  const factory StimulusState.success(Stimuli data) = _Success;

  const factory StimulusState.failure(String message) = _Failure;

  const factory StimulusState.empty() = _Empty;
}
