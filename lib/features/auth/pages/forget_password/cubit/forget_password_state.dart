part of 'forget_password_cubit.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.loading() = _Loading;
  const factory ForgetPasswordState.success(bool? data) = _Success;
  const factory ForgetPasswordState.failure(String message) = _Failure;
  const factory ForgetPasswordState.init() = _Init;
}
