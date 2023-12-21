import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pavlok_stimulus_test/features/user/user.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    UserData? user,
    int? volts,
  }) = _UserResponse;

  const UserResponse._();

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  User toEntity() => User(
      username: user?.username,
      email: user?.email,
      firstName: user?.firstName,
      lastName: user?.lastName,
      birthDate: user?.birthDate,
      weight: user?.weight,
      weightMeasurementUnit: user?.weightMeasurementUnit,
      height: user?.height,
      heightMeasurementUnit: user?.heightMeasurementUnit,
      profilePictureUrl: user?.profilePictureUrl,
      anonymous: user?.anonymous,
      timezone: user?.timezone,
      id: user?.id,
      token: user?.token,
      volts: volts);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    String? username,
    String? email,
    String? phone,
    String? countryCode,
    bool? phoneConfirmed,
    String? firstName,
    String? lastName,
    String? birthDate,
    num? weight,
    String? weightMeasurementUnit,
    num? height,
    String? heightMeasurementUnit,
    String? resetPasswordToken,
    String? resetPasswordSentAt,
    int? profilePictureId,
    String? profilePictureUrl,
    bool? emailConfirmed,
    bool? anonymous,
    String? role,
    String? timezone,
    UserSettings? settings,
    int? id,
    String? token,
  }) = _UserData;

  const UserData._();

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}

@freezed
class UserSettings with _$UserSettings {
  const factory UserSettings({
    AdditionalProp? additionalProp,
  }) = _UserSettings;

  const UserSettings._();

  factory UserSettings.fromJson(Map<String, dynamic> json) => _$UserSettingsFromJson(json);
}

@freezed
class AdditionalProp with _$AdditionalProp {
  const factory AdditionalProp({
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    int? id,
    String? settingKey,
    String? settingValue,
    String? settingType,
    Map<String, dynamic>? settingMeta,
  }) = _AdditionalProp;

  const AdditionalProp._();

  factory AdditionalProp.fromJson(Map<String, dynamic> json) => _$AdditionalPropFromJson(json);
}
