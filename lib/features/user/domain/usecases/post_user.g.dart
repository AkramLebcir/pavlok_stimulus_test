// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserParamsImpl _$$UserParamsImplFromJson(Map<String, dynamic> json) => _$UserParamsImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      birth_date: json['birth_date'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      weight_measurement_unit: json['weight_measurement_unit'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      height_measurement_unit: json['height_measurement_unit'] as String?,
      anonymous: json['anonymous'] as bool?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$UserParamsImplToJson(_$UserParamsImpl instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'birth_date': instance.birth_date,
      'weight': instance.weight,
      'weight_measurement_unit': instance.weight_measurement_unit,
      'height': instance.height,
      'height_measurement_unit': instance.height_measurement_unit,
      'anonymous': instance.anonymous,
      'timezone': instance.timezone,
    };
