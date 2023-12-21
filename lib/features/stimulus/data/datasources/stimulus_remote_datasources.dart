import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/stimulus/stimulus.dart';

abstract class StimulusRemoteDatasource {
  Future<Either<Failure, StimuliResponse>> stimulus(StimulusParams stimulusParams);
  Future<Either<Failure, StimulusResponse>> postStimulus(PostStimulusParams postStimulusParams);
}

class StimulusRemoteDatasourceImpl implements StimulusRemoteDatasource {
  final DioClient _client;

  StimulusRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, StimuliResponse>> stimulus(StimulusParams stimulusParams) async {
    final response = await _client.getRequest(
      ListAPI.stimulusSent,
      queryParameters: stimulusParams.toJson(),
      converter: (response) => StimuliResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, StimulusResponse>> postStimulus(PostStimulusParams postStimulusParams) async {
    final response = await _client.postRequest(
      ListAPI.stimulusSend,
      data: {"stimulus": postStimulusParams.toJson()},
      converter: (response) => StimulusResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
