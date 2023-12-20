import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password.freezed.dart';

@freezed
class ForgetPassword with _$ForgetPassword {
  const factory ForgetPassword({bool? success}) = _ForgetPassword;
}
