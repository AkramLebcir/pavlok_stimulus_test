part of 'create_stimulus_cubit.dart';

@freezed
class CreateStimulusState with _$CreateStimulusState {
  const factory CreateStimulusState.loading() = _Loading;

  const factory CreateStimulusState.success(Stimulus? data) = _Success;

  const factory CreateStimulusState.failure(String message) = _Failure;

  const factory CreateStimulusState.init() = _Init;
}
