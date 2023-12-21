import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'piker_state.dart';

part 'piker_cubit.freezed.dart';

class PikerCubit extends Cubit<PikerState> {
  PikerCubit()
      : super(const PikerState(
          selectPikerW1: 0,
          selectPikerW2: 0,
          selectPikerH1: 0,
          selectPikerH2: 0,
        ));

  void updateSelectedPikerWeight(int selectPikerW1, selectPikerW2) {
    emit(state.copyWith(selectPikerW1: selectPikerW1, selectPikerW2: selectPikerW2));
  }

  void updateSelectedPikerHeight(int selectPikerH1, int selectPikerH2) {
    emit(state.copyWith(selectPikerH1: selectPikerH1, selectPikerH2: selectPikerH2));
  }
}
