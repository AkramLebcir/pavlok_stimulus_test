import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

part 'stimulus_bloc.freezed.dart';
part 'stimulus_event.dart';
part 'stimulus_state.dart';

class StimulusBloc extends Bloc<StimulusEvent, StimulusState> {
  final GetStimulus _getStimulus;

  StimulusBloc(this._getStimulus) : super(const StimulusState.loading()) {
    on<StimulusEvent>((event, emit) async {
      if (event is _LoadStimulus) await fetchStimulus(event.stimulusParams, emit);
    });
  }

  Future<void> fetchStimulus(StimulusParams stimulusParams, Emitter<StimulusState> emit) async {
    await _fetchData(stimulusParams, emit);
  }

  Future<void> _fetchData(StimulusParams stimulusParams, Emitter<StimulusState> emit) async {
    emit(const StimulusState.loading());
    final data = await _getStimulus.call(stimulusParams);
    emit(data.fold(
      (l) {
        if (l is ServerFailure) {
          return StimulusState.failure(l.message ?? "");
        } else if (l is NoDataFailure) {
          return const StimulusState.empty();
        }
        return const StimulusState.empty();
      },
      (r) => StimulusState.success(r),
    ));
  }
}
