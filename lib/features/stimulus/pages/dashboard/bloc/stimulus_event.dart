part of 'stimulus_bloc.dart';

@freezed
class StimulusEvent with _$StimulusEvent {
  const factory StimulusEvent.loadStimulus(StimulusParams stimulusParams) = _LoadStimulus;
}
