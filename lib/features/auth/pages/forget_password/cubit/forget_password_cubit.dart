import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

part 'forget_password_cubit.freezed.dart';
part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this._postForgetPassword) : super(const _Loading());

  final PostForgetPassword _postForgetPassword;

  Future<void> send(ForgetPasswordParams params) async {
    emit(const _Loading());
    final data = await _postForgetPassword.call(params);

    data.fold(
      (l) {
        if (l is ServerFailure) {
          emit(_Failure(l.message ?? ""));
        }
      },
      (r) => emit(_Success(r.success)),
    );
  }
}
