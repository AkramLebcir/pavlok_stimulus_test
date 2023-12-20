import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

part 'post_forget_password.freezed.dart';
part 'post_forget_password.g.dart';

class PostForgetPassword extends UseCase<ForgetPassword, ForgetPasswordParams> {
  final AuthRepository _repo;

  PostForgetPassword(this._repo);

  @override
  Future<Either<Failure, ForgetPassword>> call(ForgetPasswordParams params) => _repo.forgetPassword(params);
}

@freezed
class ForgetPasswordParams with _$ForgetPasswordParams {
  const factory ForgetPasswordParams({
    @Default("") String email,
  }) = _ForgetPasswordParams;

  factory ForgetPasswordParams.fromJson(Map<String, dynamic> json) => _$ForgetPasswordParamsFromJson(json);
}
