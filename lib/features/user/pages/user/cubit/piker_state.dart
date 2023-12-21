part of 'piker_cubit.dart';

@freezed
class PikerState with _$PikerState {
  const factory PikerState({
    required int selectPikerW1,
    required int selectPikerW2,
    required int selectPikerH1,
    required int selectPikerH2,
  }) = _PikerState;
}
