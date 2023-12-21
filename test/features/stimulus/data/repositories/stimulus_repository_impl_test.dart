import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/dependencies_injection.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

import '../../../../helpers/fake_path_provider_platform.dart';
import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late MockStimulusRemoteDatasource mockStimulusRemoteDatasource;
  late StimulusRepositoryImpl authRepositoryImpl;
  late Stimuli stimulus;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(
      isUnitTest: true,
      prefixBox: 'stimulus_repository_impl_test_',
    );
    mockStimulusRemoteDatasource = MockStimulusRemoteDatasource();
    authRepositoryImpl = StimulusRepositoryImpl(mockStimulusRemoteDatasource);
    stimulus = StimuliResponse.fromJson(
      json.decode(jsonReader(successStimulusPath)) as Map<String, dynamic>,
    ).toEntity();
  });

  group("stimulus", () {
    const stimulusParams = StimulusParams();
    const stimulusParamsEmpty = StimulusParams();

    test('should return list stimulus when call data is successful', () async {
      // arrange
      when(mockStimulusRemoteDatasource.stimulus(stimulusParams)).thenAnswer(
        (_) async => Right(
          StimuliResponse.fromJson(
            json.decode(jsonReader(successStimulusPath)) as Map<String, dynamic>,
          ),
        ),
      );

      // act
      final result = await authRepositoryImpl.stimulus(stimulusParams);

      // assert
      verify(mockStimulusRemoteDatasource.stimulus(stimulusParams));
      expect(result, equals(Right(stimulus)));
    });

    test(
      'should return empty list stimulus when call data is successful',
      () async {
        // arrange
        when(mockStimulusRemoteDatasource.stimulus(stimulusParamsEmpty)).thenAnswer(
          (_) async => Left(NoDataFailure()),
        );

        // act
        final result = await authRepositoryImpl.stimulus(stimulusParamsEmpty);

        // assert
        verify(mockStimulusRemoteDatasource.stimulus(stimulusParamsEmpty));
        expect(result, equals(Left(NoDataFailure())));
      },
    );

    test(
      'should return server failure when call data is unsuccessful',
      () async {
        // arrange
        when(mockStimulusRemoteDatasource.stimulus(stimulusParams))
            .thenAnswer((_) async => const Left(ServerFailure('')));

        // act
        final result = await authRepositoryImpl.stimulus(stimulusParams);

        // assert
        verify(mockStimulusRemoteDatasource.stimulus(stimulusParams));
        expect(result, equals(const Left(ServerFailure(''))));
      },
    );
  });
}
