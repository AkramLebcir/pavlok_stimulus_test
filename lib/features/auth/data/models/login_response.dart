import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    AuthResponse? user,
  }) = _LoginResponse;

  const LoginResponse._();

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Login toEntity() => Login(token: user?.token);
}

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    int? id,
    String? token,
    String? error,
  }) = _AuthResponse;

  const AuthResponse._();

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}
