// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) => _$UserResponseImpl(
      user: json['user'] == null ? null : UserData.fromJson(json['user'] as Map<String, dynamic>),
      volts: json['volts'] as int?,
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) => <String, dynamic>{
      'user': instance.user?.toJson(),
      'volts': instance.volts,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) => _$UserDataImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
      phoneConfirmed: json['phoneConfirmed'] as bool?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      birthDate: json['birthDate'] as String?,
      weight: json['weight'] as num?,
      weightMeasurementUnit: json['weightMeasurementUnit'] as String?,
      height: json['height'] as num?,
      heightMeasurementUnit: json['heightMeasurementUnit'] as String?,
      resetPasswordToken: json['resetPasswordToken'] as String?,
      resetPasswordSentAt: json['resetPasswordSentAt'] as String?,
      profilePictureId: json['profilePictureId'] as int?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      anonymous: json['anonymous'] as bool?,
      role: json['role'] as String?,
      timezone: json['timezone'] as String?,
      settings: json['settings'] == null ? null : UserSettings.fromJson(json['settings'] as Map<String, dynamic>),
      id: json['id'] as int?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
      'phoneConfirmed': instance.phoneConfirmed,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthDate': instance.birthDate,
      'weight': instance.weight,
      'weightMeasurementUnit': instance.weightMeasurementUnit,
      'height': instance.height,
      'heightMeasurementUnit': instance.heightMeasurementUnit,
      'resetPasswordToken': instance.resetPasswordToken,
      'resetPasswordSentAt': instance.resetPasswordSentAt,
      'profilePictureId': instance.profilePictureId,
      'profilePictureUrl': instance.profilePictureUrl,
      'emailConfirmed': instance.emailConfirmed,
      'anonymous': instance.anonymous,
      'role': instance.role,
      'timezone': instance.timezone,
      'settings': instance.settings?.toJson(),
      'id': instance.id,
      'token': instance.token,
    };

_$UserSettingsImpl _$$UserSettingsImplFromJson(Map<String, dynamic> json) => _$UserSettingsImpl(
      additionalProp: json['additionalProp'] == null
          ? null
          : AdditionalProp.fromJson(json['additionalProp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserSettingsImplToJson(_$UserSettingsImpl instance) => <String, dynamic>{
      'additionalProp': instance.additionalProp?.toJson(),
    };

_$AdditionalPropImpl _$$AdditionalPropImplFromJson(Map<String, dynamic> json) => _$AdditionalPropImpl(
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      id: json['id'] as int?,
      settingKey: json['settingKey'] as String?,
      settingValue: json['settingValue'] as String?,
      settingType: json['settingType'] as String?,
      settingMeta: json['settingMeta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AdditionalPropImplToJson(_$AdditionalPropImpl instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'id': instance.id,
      'settingKey': instance.settingKey,
      'settingValue': instance.settingValue,
      'settingType': instance.settingType,
      'settingMeta': instance.settingMeta,
    };
