import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

part 'forget_password_response.freezed.dart';
part 'forget_password_response.g.dart';

@freezed
class ForgetPasswordResponse with _$ForgetPasswordResponse {
  const factory ForgetPasswordResponse({
    bool? success,
  }) = _ForgetPasswordResponse;

  const ForgetPasswordResponse._();

  factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) => _$ForgetPasswordResponseFromJson(json);

  ForgetPassword toEntity() => ForgetPassword(success: success);
}
