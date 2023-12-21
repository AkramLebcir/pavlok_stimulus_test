import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_user.freezed.dart';

part 'post_user.g.dart';

class PostUser extends UseCase<User, UserParams> {
  final UserRepository _repo;

  PostUser(this._repo);

  @override
  Future<Either<Failure, User>> call(UserParams params) => _repo.postUser(params);
}

@freezed
abstract class UserParams with _$UserParams {
  const factory UserParams({
    String? username,
    String? email,
    String? first_name,
    String? last_name,
    String? birth_date,
    double? weight,
    String? weight_measurement_unit,
    double? height,
    String? height_measurement_unit,
    bool? anonymous,
    String? timezone,
  }) = _UserParams;

  factory UserParams.fromJson(Map<String, dynamic> json) => _$UserParamsFromJson(json);
}
