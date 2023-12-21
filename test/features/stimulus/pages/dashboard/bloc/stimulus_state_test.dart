import 'package:flutter_test/flutter_test.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

void main() {
  group('StimulusStatusX', () {
    test('returns correct values for StimulusStatus.loading', () {
      const status = StimulusState.loading();
      expect(status, const StimulusState.loading());
    });

    test('returns correct values for StimulusStatus.success', () {
      const status = StimulusState.success(Stimuli());
      expect(status, const StimulusState.success(Stimuli()));
    });

    test('returns correct values for StimulusStatus.failure', () {
      const status = StimulusState.failure("");
      expect(status, const StimulusState.failure(""));
    });
    test('returns correct values for StimulusStatus.empty', () {
      const status = StimulusState.empty();
      expect(status, const StimulusState.empty());
    });
  });
}
