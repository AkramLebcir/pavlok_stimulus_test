import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/features.dart';
import 'package:pavlok_stimulus_test/features/user/user.dart';

abstract class UserRemoteDatasource {
  Future<Either<Failure, UserResponse>> getUser(NoParams noParams);

  Future<Either<Failure, UserResponse>> postUser(UserParams userParams);
}

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final DioClient _client;

  UserRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, UserResponse>> getUser(NoParams noParams) async {
    final response = await _client.getRequest(
      ListAPI.user,
      converter: (response) => UserResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, UserResponse>> postUser(UserParams userParams) async {
    print(userParams.toJson().toString());
    final response = await _client.putRequest(
      ListAPI.user,
      data: {"user": userParams.toJson()},
      converter: (response) => UserResponse.fromJson((response as Map<String, dynamic>)),
    );

    return response;
  }
}
