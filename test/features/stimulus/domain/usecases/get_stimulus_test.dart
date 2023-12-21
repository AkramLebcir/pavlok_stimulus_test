import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late MockStimulusRepository mockStimulusRepository;
  late GetStimulus getStimulus;
  late Stimuli stimulus;
  const stimulusParams = StimulusParams();

  setUp(() {
    stimulus = StimuliResponse.fromJson(
      json.decode(jsonReader(successStimulusPath)) as Map<String, dynamic>,
    ).toEntity();
    mockStimulusRepository = MockStimulusRepository();
    getStimulus = GetStimulus(mockStimulusRepository);
  });

  test("should get users from the repository", () async {
    /// arrange
    when(mockStimulusRepository.stimulus(stimulusParams)).thenAnswer((_) async => Right(stimulus));

    /// act
    final result = await getStimulus.call(stimulusParams);

    /// assert
    expect(result, equals(Right(stimulus)));
  });
}
