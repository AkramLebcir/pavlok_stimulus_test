import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? birthDate,
    num? weight,
    String? weightMeasurementUnit,
    num? height,
    String? heightMeasurementUnit,
    String? profilePictureUrl,
    bool? anonymous,
    String? timezone,
    int? id,
    String? token,
    int? volts,
  }) = _User;
}
