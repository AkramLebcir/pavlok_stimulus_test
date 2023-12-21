import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/stimulus/stimulus.dart';

abstract class StimulusRepository {
  Future<Either<Failure, Stimuli>> stimulus(StimulusParams stimulusParams);
  Future<Either<Failure, Stimulus>> postStimulus(PostStimulusParams postStimulusParams);
}
