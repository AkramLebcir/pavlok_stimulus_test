import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/user/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser(NoParams noParams);

  Future<Either<Failure, User>> postUser(UserParams userParams);
}
