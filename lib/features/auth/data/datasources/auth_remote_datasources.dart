import 'package:dartz/dartz.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/features/auth/auth.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  );

  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams);

  Future<Either<Failure, ForgetPasswordResponse>> forgetPassword(ForgetPasswordParams forgetPasswordParams);
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final DioClient _client;

  AuthRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  ) async {
    final response = await _client.postRequest(
      ListAPI.register,
      data: {"user": registerParams.toJson()},
      converter: (response) => RegisterResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams) async {
    final response = await _client.postRequest(
      ListAPI.login,
      data: {"user": loginParams.toJson()},
      converter: (response) => LoginResponse.fromJson((response as Map<String, dynamic>)),
    );

    return response;
  }

  @override
  Future<Either<Failure, ForgetPasswordResponse>> forgetPassword(ForgetPasswordParams forgetPasswordParams) async {
    final response = await _client.postRequest(
      ListAPI.forgetPassword,
      data: {"user": forgetPasswordParams.toJson()},
      converter: (response) => ForgetPasswordResponse.fromJson((response as Map<String, dynamic>)),
    );

    return response;
  }
}
