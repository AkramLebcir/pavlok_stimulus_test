import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  const loginResponse = LoginResponse(user: AuthResponse(token: 'QpwL5tke4Pnpja7X4'));

  test('from json, should return a valid model from json', () {
    /// arrange
    final jsonMap = json.decode(jsonReader(successLoginPath));

    /// act
    final result = LoginResponse.fromJson(jsonMap);

    /// assert
    expect(result, equals(loginResponse));
  });

  test('to json, should return a json map containing proper data', () {
    /// act
    final result = loginResponse.toJson();

    /// arrange
    final expectedJson = {
      "user": {
        "id": null,
        "token": 'QpwL5tke4Pnpja7X4',
        'error': null,
      }
    };

    /// assert
    expect(result, equals(expectedJson));
  });
}
