import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/dependencies_injection.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

import '../../../../../helpers/fake_path_provider_platform.dart';
import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  late DioAdapter dioAdapter;
  late StimulusRemoteDatasourceImpl dataSource;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(
      isUnitTest: true,
      prefixBox: 'stimulus_remote_datasource_test_',
    );
    dioAdapter = DioAdapter(dio: sl<DioClient>().dio);
    dataSource = StimulusRemoteDatasourceImpl(sl<DioClient>());
  });

  group('user', () {
    const stimulusParams = StimulusParams();
    final stimulusModel = StimuliResponse.fromJson(
      json.decode(jsonReader(successStimulusPath)) as Map<String, dynamic>,
    );
    final stimulusEmptyModel = StimuliResponse.fromJson(
      json.decode(jsonReader(emptyStimulusPath)) as Map<String, dynamic>,
    );

    test(
      'should return list user success model when response code is 200',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.stimulusSent,
          (server) => server.reply(
            200,
            json.decode(jsonReader(successStimulusPath)),
          ),
          queryParameters: stimulusParams.toJson(),
        );

        /// act
        final result = await dataSource.stimulus(stimulusParams);

        /// assert
        result.fold(
          (l) => expect(l, null),
          (r) => expect(r, stimulusModel),
        );
      },
    );

    test(
      'should return empty list user success model when response code is 200',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.stimulusSent,
          (server) => server.reply(
            200,
            json.decode(jsonReader(emptyStimulusPath)),
          ),
          queryParameters: stimulusParams.toJson(),
        );

        /// act
        final result = await dataSource.stimulus(stimulusParams);

        /// assert
        result.fold(
          (l) => expect(l, null),
          (r) => expect(r, stimulusEmptyModel),
        );
      },
    );

    test(
      'should return user unsuccessful model when response code is 400',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.stimulusSent,
          (server) => server.reply(
            400,
            json.decode(jsonReader(successStimulusPath)),
          ),
          queryParameters: stimulusParams.toJson(),
        );

        /// act
        final result = await dataSource.stimulus(stimulusParams);

        /// assert
        result.fold(
          (l) => expect(l, isA<ServerFailure>()),
          (r) => expect(r, null),
        );
      },
    );
  });
}
