// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  UserData? get user => throw _privateConstructorUsedError;

  int? get volts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;

  @useResult
  $Res call({UserData? user, int? volts});

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse> implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? volts = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
      volts: freezed == volts
          ? _value.volts
          : volts // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res> implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(_$UserResponseImpl value, $Res Function(_$UserResponseImpl) then) =
      __$$UserResponseImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({UserData? user, int? volts});

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res> extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(_$UserResponseImpl _value, $Res Function(_$UserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? volts = freezed,
  }) {
    return _then(_$UserResponseImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
      volts: freezed == volts
          ? _value.volts
          : volts // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseImpl extends _UserResponse {
  const _$UserResponseImpl({this.user, this.volts}) : super._();

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) => _$$UserResponseImplFromJson(json);

  @override
  final UserData? user;
  @override
  final int? volts;

  @override
  String toString() {
    return 'UserResponse(user: $user, volts: $volts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.volts, volts) || other.volts == volts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, volts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(
      this,
    );
  }
}

abstract class _UserResponse extends UserResponse {
  const factory _UserResponse({final UserData? user, final int? volts}) = _$UserResponseImpl;

  const _UserResponse._() : super._();

  factory _UserResponse.fromJson(Map<String, dynamic> json) = _$UserResponseImpl.fromJson;

  @override
  UserData? get user;

  @override
  int? get volts;

  @override
  @JsonKey(ignore: true)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith => throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String? get username => throw _privateConstructorUsedError;

  String? get email => throw _privateConstructorUsedError;

  String? get phone => throw _privateConstructorUsedError;

  String? get countryCode => throw _privateConstructorUsedError;

  bool? get phoneConfirmed => throw _privateConstructorUsedError;

  String? get firstName => throw _privateConstructorUsedError;

  String? get lastName => throw _privateConstructorUsedError;

  String? get birthDate => throw _privateConstructorUsedError;

  num? get weight => throw _privateConstructorUsedError;

  String? get weightMeasurementUnit => throw _privateConstructorUsedError;

  num? get height => throw _privateConstructorUsedError;

  String? get heightMeasurementUnit => throw _privateConstructorUsedError;

  String? get resetPasswordToken => throw _privateConstructorUsedError;

  String? get resetPasswordSentAt => throw _privateConstructorUsedError;

  int? get profilePictureId => throw _privateConstructorUsedError;

  String? get profilePictureUrl => throw _privateConstructorUsedError;

  bool? get emailConfirmed => throw _privateConstructorUsedError;

  bool? get anonymous => throw _privateConstructorUsedError;

  String? get role => throw _privateConstructorUsedError;

  String? get timezone => throw _privateConstructorUsedError;

  UserSettings? get settings => throw _privateConstructorUsedError;

  int? get id => throw _privateConstructorUsedError;

  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) = _$UserDataCopyWithImpl<$Res, UserData>;

  @useResult
  $Res call(
      {String? username,
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
      String? token});

  $UserSettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? phoneConfirmed = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthDate = freezed,
    Object? weight = freezed,
    Object? weightMeasurementUnit = freezed,
    Object? height = freezed,
    Object? heightMeasurementUnit = freezed,
    Object? resetPasswordToken = freezed,
    Object? resetPasswordSentAt = freezed,
    Object? profilePictureId = freezed,
    Object? profilePictureUrl = freezed,
    Object? emailConfirmed = freezed,
    Object? anonymous = freezed,
    Object? role = freezed,
    Object? timezone = freezed,
    Object? settings = freezed,
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneConfirmed: freezed == phoneConfirmed
          ? _value.phoneConfirmed
          : phoneConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num?,
      weightMeasurementUnit: freezed == weightMeasurementUnit
          ? _value.weightMeasurementUnit
          : weightMeasurementUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num?,
      heightMeasurementUnit: freezed == heightMeasurementUnit
          ? _value.heightMeasurementUnit
          : heightMeasurementUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      resetPasswordToken: freezed == resetPasswordToken
          ? _value.resetPasswordToken
          : resetPasswordToken // ignore: cast_nullable_to_non_nullable
              as String?,
      resetPasswordSentAt: freezed == resetPasswordSentAt
          ? _value.resetPasswordSentAt
          : resetPasswordSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureId: freezed == profilePictureId
          ? _value.profilePictureId
          : profilePictureId // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      emailConfirmed: freezed == emailConfirmed
          ? _value.emailConfirmed
          : emailConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      anonymous: freezed == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as UserSettings?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSettingsCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $UserSettingsCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(_$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? username,
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
      String? token});

  @override
  $UserSettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(_$UserDataImpl _value, $Res Function(_$UserDataImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? phoneConfirmed = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthDate = freezed,
    Object? weight = freezed,
    Object? weightMeasurementUnit = freezed,
    Object? height = freezed,
    Object? heightMeasurementUnit = freezed,
    Object? resetPasswordToken = freezed,
    Object? resetPasswordSentAt = freezed,
    Object? profilePictureId = freezed,
    Object? profilePictureUrl = freezed,
    Object? emailConfirmed = freezed,
    Object? anonymous = freezed,
    Object? role = freezed,
    Object? timezone = freezed,
    Object? settings = freezed,
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UserDataImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneConfirmed: freezed == phoneConfirmed
          ? _value.phoneConfirmed
          : phoneConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num?,
      weightMeasurementUnit: freezed == weightMeasurementUnit
          ? _value.weightMeasurementUnit
          : weightMeasurementUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num?,
      heightMeasurementUnit: freezed == heightMeasurementUnit
          ? _value.heightMeasurementUnit
          : heightMeasurementUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      resetPasswordToken: freezed == resetPasswordToken
          ? _value.resetPasswordToken
          : resetPasswordToken // ignore: cast_nullable_to_non_nullable
              as String?,
      resetPasswordSentAt: freezed == resetPasswordSentAt
          ? _value.resetPasswordSentAt
          : resetPasswordSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureId: freezed == profilePictureId
          ? _value.profilePictureId
          : profilePictureId // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      emailConfirmed: freezed == emailConfirmed
          ? _value.emailConfirmed
          : emailConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      anonymous: freezed == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as UserSettings?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl extends _UserData {
  const _$UserDataImpl(
      {this.username,
      this.email,
      this.phone,
      this.countryCode,
      this.phoneConfirmed,
      this.firstName,
      this.lastName,
      this.birthDate,
      this.weight,
      this.weightMeasurementUnit,
      this.height,
      this.heightMeasurementUnit,
      this.resetPasswordToken,
      this.resetPasswordSentAt,
      this.profilePictureId,
      this.profilePictureUrl,
      this.emailConfirmed,
      this.anonymous,
      this.role,
      this.timezone,
      this.settings,
      this.id,
      this.token})
      : super._();

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) => _$$UserDataImplFromJson(json);

  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? countryCode;
  @override
  final bool? phoneConfirmed;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? birthDate;
  @override
  final num? weight;
  @override
  final String? weightMeasurementUnit;
  @override
  final num? height;
  @override
  final String? heightMeasurementUnit;
  @override
  final String? resetPasswordToken;
  @override
  final String? resetPasswordSentAt;
  @override
  final int? profilePictureId;
  @override
  final String? profilePictureUrl;
  @override
  final bool? emailConfirmed;
  @override
  final bool? anonymous;
  @override
  final String? role;
  @override
  final String? timezone;
  @override
  final UserSettings? settings;
  @override
  final int? id;
  @override
  final String? token;

  @override
  String toString() {
    return 'UserData(username: $username, email: $email, phone: $phone, countryCode: $countryCode, phoneConfirmed: $phoneConfirmed, firstName: $firstName, lastName: $lastName, birthDate: $birthDate, weight: $weight, weightMeasurementUnit: $weightMeasurementUnit, height: $height, heightMeasurementUnit: $heightMeasurementUnit, resetPasswordToken: $resetPasswordToken, resetPasswordSentAt: $resetPasswordSentAt, profilePictureId: $profilePictureId, profilePictureUrl: $profilePictureUrl, emailConfirmed: $emailConfirmed, anonymous: $anonymous, role: $role, timezone: $timezone, settings: $settings, id: $id, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.phoneConfirmed, phoneConfirmed) || other.phoneConfirmed == phoneConfirmed) &&
            (identical(other.firstName, firstName) || other.firstName == firstName) &&
            (identical(other.lastName, lastName) || other.lastName == lastName) &&
            (identical(other.birthDate, birthDate) || other.birthDate == birthDate) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.weightMeasurementUnit, weightMeasurementUnit) ||
                other.weightMeasurementUnit == weightMeasurementUnit) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.heightMeasurementUnit, heightMeasurementUnit) ||
                other.heightMeasurementUnit == heightMeasurementUnit) &&
            (identical(other.resetPasswordToken, resetPasswordToken) ||
                other.resetPasswordToken == resetPasswordToken) &&
            (identical(other.resetPasswordSentAt, resetPasswordSentAt) ||
                other.resetPasswordSentAt == resetPasswordSentAt) &&
            (identical(other.profilePictureId, profilePictureId) || other.profilePictureId == profilePictureId) &&
            (identical(other.profilePictureUrl, profilePictureUrl) || other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.emailConfirmed, emailConfirmed) || other.emailConfirmed == emailConfirmed) &&
            (identical(other.anonymous, anonymous) || other.anonymous == anonymous) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.timezone, timezone) || other.timezone == timezone) &&
            (identical(other.settings, settings) || other.settings == settings) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        username,
        email,
        phone,
        countryCode,
        phoneConfirmed,
        firstName,
        lastName,
        birthDate,
        weight,
        weightMeasurementUnit,
        height,
        heightMeasurementUnit,
        resetPasswordToken,
        resetPasswordSentAt,
        profilePictureId,
        profilePictureUrl,
        emailConfirmed,
        anonymous,
        role,
        timezone,
        settings,
        id,
        token
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData extends UserData {
  const factory _UserData(
      {final String? username,
      final String? email,
      final String? phone,
      final String? countryCode,
      final bool? phoneConfirmed,
      final String? firstName,
      final String? lastName,
      final String? birthDate,
      final num? weight,
      final String? weightMeasurementUnit,
      final num? height,
      final String? heightMeasurementUnit,
      final String? resetPasswordToken,
      final String? resetPasswordSentAt,
      final int? profilePictureId,
      final String? profilePictureUrl,
      final bool? emailConfirmed,
      final bool? anonymous,
      final String? role,
      final String? timezone,
      final UserSettings? settings,
      final int? id,
      final String? token}) = _$UserDataImpl;

  const _UserData._() : super._();

  factory _UserData.fromJson(Map<String, dynamic> json) = _$UserDataImpl.fromJson;

  @override
  String? get username;

  @override
  String? get email;

  @override
  String? get phone;

  @override
  String? get countryCode;

  @override
  bool? get phoneConfirmed;

  @override
  String? get firstName;

  @override
  String? get lastName;

  @override
  String? get birthDate;

  @override
  num? get weight;

  @override
  String? get weightMeasurementUnit;

  @override
  num? get height;

  @override
  String? get heightMeasurementUnit;

  @override
  String? get resetPasswordToken;

  @override
  String? get resetPasswordSentAt;

  @override
  int? get profilePictureId;

  @override
  String? get profilePictureUrl;

  @override
  bool? get emailConfirmed;

  @override
  bool? get anonymous;

  @override
  String? get role;

  @override
  String? get timezone;

  @override
  UserSettings? get settings;

  @override
  int? get id;

  @override
  String? get token;

  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith => throw _privateConstructorUsedError;
}

UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) {
  return _UserSettings.fromJson(json);
}

/// @nodoc
mixin _$UserSettings {
  AdditionalProp? get additionalProp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingsCopyWith<UserSettings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsCopyWith<$Res> {
  factory $UserSettingsCopyWith(UserSettings value, $Res Function(UserSettings) then) =
      _$UserSettingsCopyWithImpl<$Res, UserSettings>;

  @useResult
  $Res call({AdditionalProp? additionalProp});

  $AdditionalPropCopyWith<$Res>? get additionalProp;
}

/// @nodoc
class _$UserSettingsCopyWithImpl<$Res, $Val extends UserSettings> implements $UserSettingsCopyWith<$Res> {
  _$UserSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalProp = freezed,
  }) {
    return _then(_value.copyWith(
      additionalProp: freezed == additionalProp
          ? _value.additionalProp
          : additionalProp // ignore: cast_nullable_to_non_nullable
              as AdditionalProp?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionalPropCopyWith<$Res>? get additionalProp {
    if (_value.additionalProp == null) {
      return null;
    }

    return $AdditionalPropCopyWith<$Res>(_value.additionalProp!, (value) {
      return _then(_value.copyWith(additionalProp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserSettingsImplCopyWith<$Res> implements $UserSettingsCopyWith<$Res> {
  factory _$$UserSettingsImplCopyWith(_$UserSettingsImpl value, $Res Function(_$UserSettingsImpl) then) =
      __$$UserSettingsImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({AdditionalProp? additionalProp});

  @override
  $AdditionalPropCopyWith<$Res>? get additionalProp;
}

/// @nodoc
class __$$UserSettingsImplCopyWithImpl<$Res> extends _$UserSettingsCopyWithImpl<$Res, _$UserSettingsImpl>
    implements _$$UserSettingsImplCopyWith<$Res> {
  __$$UserSettingsImplCopyWithImpl(_$UserSettingsImpl _value, $Res Function(_$UserSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalProp = freezed,
  }) {
    return _then(_$UserSettingsImpl(
      additionalProp: freezed == additionalProp
          ? _value.additionalProp
          : additionalProp // ignore: cast_nullable_to_non_nullable
              as AdditionalProp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSettingsImpl extends _UserSettings {
  const _$UserSettingsImpl({this.additionalProp}) : super._();

  factory _$UserSettingsImpl.fromJson(Map<String, dynamic> json) => _$$UserSettingsImplFromJson(json);

  @override
  final AdditionalProp? additionalProp;

  @override
  String toString() {
    return 'UserSettings(additionalProp: $additionalProp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsImpl &&
            (identical(other.additionalProp, additionalProp) || other.additionalProp == additionalProp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, additionalProp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingsImplCopyWith<_$UserSettingsImpl> get copyWith =>
      __$$UserSettingsImplCopyWithImpl<_$UserSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSettingsImplToJson(
      this,
    );
  }
}

abstract class _UserSettings extends UserSettings {
  const factory _UserSettings({final AdditionalProp? additionalProp}) = _$UserSettingsImpl;

  const _UserSettings._() : super._();

  factory _UserSettings.fromJson(Map<String, dynamic> json) = _$UserSettingsImpl.fromJson;

  @override
  AdditionalProp? get additionalProp;

  @override
  @JsonKey(ignore: true)
  _$$UserSettingsImplCopyWith<_$UserSettingsImpl> get copyWith => throw _privateConstructorUsedError;
}

AdditionalProp _$AdditionalPropFromJson(Map<String, dynamic> json) {
  return _AdditionalProp.fromJson(json);
}

/// @nodoc
mixin _$AdditionalProp {
  String? get createdAt => throw _privateConstructorUsedError;

  String? get updatedAt => throw _privateConstructorUsedError;

  String? get deletedAt => throw _privateConstructorUsedError;

  int? get id => throw _privateConstructorUsedError;

  String? get settingKey => throw _privateConstructorUsedError;

  String? get settingValue => throw _privateConstructorUsedError;

  String? get settingType => throw _privateConstructorUsedError;

  Map<String, dynamic>? get settingMeta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdditionalPropCopyWith<AdditionalProp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalPropCopyWith<$Res> {
  factory $AdditionalPropCopyWith(AdditionalProp value, $Res Function(AdditionalProp) then) =
      _$AdditionalPropCopyWithImpl<$Res, AdditionalProp>;

  @useResult
  $Res call(
      {String? createdAt,
      String? updatedAt,
      String? deletedAt,
      int? id,
      String? settingKey,
      String? settingValue,
      String? settingType,
      Map<String, dynamic>? settingMeta});
}

/// @nodoc
class _$AdditionalPropCopyWithImpl<$Res, $Val extends AdditionalProp> implements $AdditionalPropCopyWith<$Res> {
  _$AdditionalPropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? id = freezed,
    Object? settingKey = freezed,
    Object? settingValue = freezed,
    Object? settingType = freezed,
    Object? settingMeta = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      settingKey: freezed == settingKey
          ? _value.settingKey
          : settingKey // ignore: cast_nullable_to_non_nullable
              as String?,
      settingValue: freezed == settingValue
          ? _value.settingValue
          : settingValue // ignore: cast_nullable_to_non_nullable
              as String?,
      settingType: freezed == settingType
          ? _value.settingType
          : settingType // ignore: cast_nullable_to_non_nullable
              as String?,
      settingMeta: freezed == settingMeta
          ? _value.settingMeta
          : settingMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalPropImplCopyWith<$Res> implements $AdditionalPropCopyWith<$Res> {
  factory _$$AdditionalPropImplCopyWith(_$AdditionalPropImpl value, $Res Function(_$AdditionalPropImpl) then) =
      __$$AdditionalPropImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? createdAt,
      String? updatedAt,
      String? deletedAt,
      int? id,
      String? settingKey,
      String? settingValue,
      String? settingType,
      Map<String, dynamic>? settingMeta});
}

/// @nodoc
class __$$AdditionalPropImplCopyWithImpl<$Res> extends _$AdditionalPropCopyWithImpl<$Res, _$AdditionalPropImpl>
    implements _$$AdditionalPropImplCopyWith<$Res> {
  __$$AdditionalPropImplCopyWithImpl(_$AdditionalPropImpl _value, $Res Function(_$AdditionalPropImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? id = freezed,
    Object? settingKey = freezed,
    Object? settingValue = freezed,
    Object? settingType = freezed,
    Object? settingMeta = freezed,
  }) {
    return _then(_$AdditionalPropImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      settingKey: freezed == settingKey
          ? _value.settingKey
          : settingKey // ignore: cast_nullable_to_non_nullable
              as String?,
      settingValue: freezed == settingValue
          ? _value.settingValue
          : settingValue // ignore: cast_nullable_to_non_nullable
              as String?,
      settingType: freezed == settingType
          ? _value.settingType
          : settingType // ignore: cast_nullable_to_non_nullable
              as String?,
      settingMeta: freezed == settingMeta
          ? _value._settingMeta
          : settingMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalPropImpl extends _AdditionalProp {
  const _$AdditionalPropImpl(
      {this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.id,
      this.settingKey,
      this.settingValue,
      this.settingType,
      final Map<String, dynamic>? settingMeta})
      : _settingMeta = settingMeta,
        super._();

  factory _$AdditionalPropImpl.fromJson(Map<String, dynamic> json) => _$$AdditionalPropImplFromJson(json);

  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;
  @override
  final int? id;
  @override
  final String? settingKey;
  @override
  final String? settingValue;
  @override
  final String? settingType;
  final Map<String, dynamic>? _settingMeta;

  @override
  Map<String, dynamic>? get settingMeta {
    final value = _settingMeta;
    if (value == null) return null;
    if (_settingMeta is EqualUnmodifiableMapView) return _settingMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AdditionalProp(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, id: $id, settingKey: $settingKey, settingValue: $settingValue, settingType: $settingType, settingMeta: $settingMeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalPropImpl &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.settingKey, settingKey) || other.settingKey == settingKey) &&
            (identical(other.settingValue, settingValue) || other.settingValue == settingValue) &&
            (identical(other.settingType, settingType) || other.settingType == settingType) &&
            const DeepCollectionEquality().equals(other._settingMeta, _settingMeta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, updatedAt, deletedAt, id, settingKey, settingValue,
      settingType, const DeepCollectionEquality().hash(_settingMeta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalPropImplCopyWith<_$AdditionalPropImpl> get copyWith =>
      __$$AdditionalPropImplCopyWithImpl<_$AdditionalPropImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalPropImplToJson(
      this,
    );
  }
}

abstract class _AdditionalProp extends AdditionalProp {
  const factory _AdditionalProp(
      {final String? createdAt,
      final String? updatedAt,
      final String? deletedAt,
      final int? id,
      final String? settingKey,
      final String? settingValue,
      final String? settingType,
      final Map<String, dynamic>? settingMeta}) = _$AdditionalPropImpl;

  const _AdditionalProp._() : super._();

  factory _AdditionalProp.fromJson(Map<String, dynamic> json) = _$AdditionalPropImpl.fromJson;

  @override
  String? get createdAt;

  @override
  String? get updatedAt;

  @override
  String? get deletedAt;

  @override
  int? get id;

  @override
  String? get settingKey;

  @override
  String? get settingValue;

  @override
  String? get settingType;

  @override
  Map<String, dynamic>? get settingMeta;

  @override
  @JsonKey(ignore: true)
  _$$AdditionalPropImplCopyWith<_$AdditionalPropImpl> get copyWith => throw _privateConstructorUsedError;
}
