import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/user/user.dart';

class GetUser extends UseCase<User, NoParams> {
  final UserRepository _repo;

  GetUser(this._repo);

  @override
  Future<Either<Failure, User>> call(NoParams params) => _repo.getUser(params);
}
