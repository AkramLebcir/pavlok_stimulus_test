import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

part 'post_stimulus.freezed.dart';
part 'post_stimulus.g.dart';

class PostStimulus extends UseCase<Stimulus, PostStimulusParams> {
  final StimulusRepository _repo;

  PostStimulus(this._repo);

  @override
  Future<Either<Failure, Stimulus>> call(PostStimulusParams params) => _repo.postStimulus(params);
}

@freezed
class PostStimulusParams with _$PostStimulusParams {
  const factory PostStimulusParams({
    @Default("zap") String stimulusType,
    @Default("") String reason,
    @Default(1) int stimulusValue,
  }) = _PostStimulusParams;

  factory PostStimulusParams.fromJson(Map<String, dynamic> json) => _$PostStimulusParamsFromJson(json);
}
