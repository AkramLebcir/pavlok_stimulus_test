import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/user/user.dart';

class UserRepositoryImpl implements UserRepository {
  /// Data Source
  final UserRemoteDatasource userRemoteDatasource;

  const UserRepositoryImpl(this.userRemoteDatasource);

  @override
  Future<Either<Failure, User>> getUser(
    NoParams noParams,
  ) async {
    final response = await userRemoteDatasource.getUser(noParams);

    return response.fold(
      (failure) => Left(failure),
      (userResponse) {
        return Right(userResponse.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, User>> postUser(UserParams userParams) async {
    final response = await userRemoteDatasource.postUser(userParams);

    return response.fold(
      (failure) => Left(failure),
      (userResponse) {
        return Right(userResponse.toEntity());
      },
    );
  }
}
