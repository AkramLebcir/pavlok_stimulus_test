import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

part 'get_stimulus.freezed.dart';
part 'get_stimulus.g.dart';

class GetStimulus extends UseCase<Stimuli, StimulusParams> {
  final StimulusRepository _repo;

  GetStimulus(this._repo);

  @override
  Future<Either<Failure, Stimuli>> call(StimulusParams params) => _repo.stimulus(params);
}

@freezed
class StimulusParams with _$StimulusParams {
  const factory StimulusParams() = _StimulusParams;

  factory StimulusParams.fromJson(Map<String, dynamic> json) => _$StimulusParamsFromJson(json);
}
