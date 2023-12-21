import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/stimulus/stimulus.dart';

class StimulusRepositoryImpl implements StimulusRepository {
  /// Data Source
  final StimulusRemoteDatasource stimulusRemoteDatasource;

  const StimulusRepositoryImpl(this.stimulusRemoteDatasource);

  @override
  Future<Either<Failure, Stimuli>> stimulus(StimulusParams stimulusParams) async {
    final response = await stimulusRemoteDatasource.stimulus(stimulusParams);

    return response.fold(
      (failure) => Left(failure),
      (stimulusResponse) {
        if (stimulusResponse.stimulusList?.isEmpty ?? true) {
          return Left(NoDataFailure());
        }
        return Right(stimulusResponse.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, Stimulus>> postStimulus(PostStimulusParams postStimulusParams) async {
    final response = await stimulusRemoteDatasource.postStimulus(postStimulusParams);

    return response.fold(
      (failure) => Left(failure),
      (stimulusResponse) {
        if (stimulusResponse.stimulus == null) {
          return Left(NoDataFailure());
        }
        return Right(stimulusResponse.toEntity());
      },
    );
  }
}
