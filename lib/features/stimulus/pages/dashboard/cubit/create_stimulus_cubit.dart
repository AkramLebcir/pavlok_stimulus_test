import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

part 'create_stimulus_cubit.freezed.dart';
part 'create_stimulus_state.dart';

class CreateStimulusCubit extends Cubit<CreateStimulusState> {
  CreateStimulusCubit(this._postStimulus) : super(const _Loading());

  final PostStimulus _postStimulus;

  bool? isPasswordHide = true;

  Future<void> create(PostStimulusParams params) async {
    emit(const _Loading());
    final data = await _postStimulus.call(params);

    data.fold(
      (l) {
        if (l is ServerFailure) {
          emit(_Failure(l.message ?? ""));
        }
      },
      (r) => emit(_Success(r)),
    );
  }
}
