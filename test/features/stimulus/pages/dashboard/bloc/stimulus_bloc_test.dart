import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/dependencies_injection.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

import '../../../../../helpers/fake_path_provider_platform.dart';
import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';
import 'stimulus_bloc_test.mocks.dart';

@GenerateMocks([GetStimulus])
void main() {
  late StimulusBloc stimulusBloc;
  late MockGetStimulus mockGetStimulus;
  late Stimuli stimulus;

  const dummyStimulusRequest1 = StimulusParams();
  const dummyStimulusRequest2 = StimulusParams();
  const errorMessage = "";

  /// Initialize data
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(isUnitTest: true, prefixBox: 'stimulus_cubit_test_');

    stimulus = StimuliResponse.fromJson(
      json.decode(jsonReader(successStimulusPath)) as Map<String, dynamic>,
    ).toEntity();
    mockGetStimulus = MockGetStimulus();
    stimulusBloc = StimulusBloc(mockGetStimulus);
  });

  /// Dispose bloc
  tearDown(() {
    stimulusBloc.close();
  });

  ///  Initial data should be loading
  test("Initial data should be StimulusStatus.loading", () {
    expect(stimulusBloc.state, const StimulusState.loading());
  });

  blocTest<StimulusBloc, StimulusState>(
    "When repo success get data should be return StimulusState and loading only show when request page 1",
    build: () {
      when(mockGetStimulus.call(dummyStimulusRequest1)).thenAnswer((_) async => Right(stimulus));

      return stimulusBloc;
    },
    act: (StimulusBloc stimulusBloc) => stimulusBloc..add(const StimulusEvent.loadStimulus(dummyStimulusRequest1)),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const StimulusState.loading(),
      StimulusState.success(stimulus),
    ],
  );

  blocTest<StimulusBloc, StimulusState>(
    "When request page 2, isLoading should not execute",
    build: () {
      when(mockGetStimulus.call(dummyStimulusRequest2)).thenAnswer((_) async => Right(stimulus));

      return stimulusBloc;
    },
    act: (StimulusBloc stimulusCubit) => stimulusBloc..add(const StimulusEvent.loadStimulus(dummyStimulusRequest2)),
    wait: const Duration(milliseconds: 100),
    expect: () => [const StimulusState.loading(), StimulusState.success(stimulus)],
  );

  blocTest<StimulusBloc, StimulusState>(
    "When failed to get data from server",
    build: () {
      when(
        mockGetStimulus.call(dummyStimulusRequest1),
      ).thenAnswer((_) async => const Left(ServerFailure(errorMessage)));

      return StimulusBloc(mockGetStimulus);
    },
    act: (StimulusBloc stimulusBloc) => stimulusBloc..add(const StimulusEvent.loadStimulus(dummyStimulusRequest1)),
    wait: const Duration(milliseconds: 100),
    expect: () => const [
      StimulusState.loading(),
      StimulusState.failure(errorMessage),
    ],
  );

  blocTest<StimulusBloc, StimulusState>(
    "When no data from server",
    build: () {
      when(mockGetStimulus.call(dummyStimulusRequest2)).thenAnswer((_) async => Left(NoDataFailure()));

      return StimulusBloc(mockGetStimulus);
    },
    act: (StimulusBloc stimulusBloc) => stimulusBloc..add(const StimulusEvent.loadStimulus(dummyStimulusRequest2)),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const StimulusState.loading(),
      const StimulusState.empty(),
    ],
  );

  blocTest<StimulusBloc, StimulusState>(
    "When request refreshStimulus",
    build: () {
      when(mockGetStimulus.call(dummyStimulusRequest1)).thenAnswer((_) async => Right(stimulus));

      return StimulusBloc(mockGetStimulus);
    },
    act: (StimulusBloc stimulusBloc) => stimulusBloc..add(const StimulusEvent.loadStimulus(dummyStimulusRequest1)),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const StimulusState.loading(),
      StimulusState.success(stimulus),
    ],
  );
}
