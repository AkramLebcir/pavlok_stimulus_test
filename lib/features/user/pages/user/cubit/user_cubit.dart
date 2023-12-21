import 'package:flutter/cupertino.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/user/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';

part 'user_cubit.freezed.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> with MainBoxMixin {
  final GetUser _getUser;
  final PostUser _postUser;

  UserCubit(this._getUser, this._postUser) : super(const _Loading());

  Future<void> updateUser(User? data) async {
    emit(const _Loading());
    emit(_Success(data));
  }

  Future<void> getUser(NoParams params) async {
    emit(const _Loading());
    final data = await _getUser.call(params);
    data.fold((l) {
      if (l is ServerFailure) {
        emit(_Failure(l.message ?? ""));
      }
    }, (r) => emit(_Success(r)));
  }

  Future<void> postUser(UserParams params) async {
    emit(const _Loading());
    final data = await _postUser.call(params);
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
