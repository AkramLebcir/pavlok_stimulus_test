import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  final listStimulus = [
    StimulusData.fromJson({
      "id": 7,
      "value": 10,
      "type": "zap",
      "reason": "test 7",
      "sentAt": null,
      "sentBy": null,
      "sentTo": null,
      "createdAt": null,
      "updatedAt": null,
      "via": null,
      "message": null,
      "pushedAt": null,
      "failedAt": null,
      "failureMessage": null,
      "sentByApp": null,
      "pattern": null,
      "repeat": null,
      "deleted": null,
      "userDate": null,
      "recent": null,
      "meta": null
    }),
    StimulusData.fromJson({
      "id": 8,
      "value": 38,
      "type": "zap",
      "reason": "test 8",
      "sentAt": null,
      "sentBy": null,
      "sentTo": null,
      "createdAt": null,
      "updatedAt": null,
      "via": null,
      "message": null,
      "pushedAt": null,
      "failedAt": null,
      "failureMessage": null,
      "sentByApp": null,
      "pattern": null,
      "repeat": null,
      "deleted": null,
      "userDate": null,
      "recent": null,
      "meta": null
    }),
    StimulusData.fromJson({
      "id": 9,
      "value": 20,
      "type": "beep",
      "reason": "test 9",
      "sentAt": null,
      "sentBy": null,
      "sentTo": null,
      "createdAt": null,
      "updatedAt": null,
      "via": null,
      "message": null,
      "pushedAt": null,
      "failedAt": null,
      "failureMessage": null,
      "sentByApp": null,
      "pattern": null,
      "repeat": null,
      "deleted": null,
      "userDate": null,
      "recent": null,
      "meta": null
    }),
    StimulusData.fromJson({
      "id": 10,
      "value": 40,
      "type": "beep",
      "reason": "test 10",
      "sentAt": null,
      "sentBy": null,
      "sentTo": null,
      "createdAt": null,
      "updatedAt": null,
      "via": null,
      "message": null,
      "pushedAt": null,
      "failedAt": null,
      "failureMessage": null,
      "sentByApp": null,
      "pattern": null,
      "repeat": null,
      "deleted": null,
      "userDate": null,
      "recent": null,
      "meta": null
    }),
    StimulusData.fromJson({
      "id": 11,
      "value": 80,
      "type": "beep",
      "reason": "test 11",
      "sentAt": null,
      "sentBy": null,
      "sentTo": null,
      "createdAt": null,
      "updatedAt": null,
      "via": null,
      "message": null,
      "pushedAt": null,
      "failedAt": null,
      "failureMessage": null,
      "sentByApp": null,
      "pattern": null,
      "repeat": null,
      "deleted": null,
      "userDate": null,
      "recent": null,
      "meta": null
    }),
    StimulusData.fromJson({
      "id": 12,
      "value": 10,
      "type": "vibe",
      "reason": "test 12",
      "sentAt": null,
      "sentBy": null,
      "sentTo": null,
      "createdAt": null,
      "updatedAt": null,
      "via": null,
      "message": null,
      "pushedAt": null,
      "failedAt": null,
      "failureMessage": null,
      "sentByApp": null,
      "pattern": null,
      "repeat": null,
      "deleted": null,
      "userDate": null,
      "recent": null,
      "meta": null
    }),
  ];
  final userResponse = StimuliResponse(
    stimulusList: listStimulus,
  );

  test('from json, should return a valid model from json', () {
    /// arrange
    final jsonMap = json.decode(jsonReader(successStimulusPath));

    /// act
    final result = StimuliResponse.fromJson(jsonMap as Map<String, dynamic>);

    /// assert
    expect(result, equals(userResponse));
  });

  test('to json, should return a json map containing proper data', () {
    /// act
    final result = userResponse.toJson();

    /// arrange
    final exceptedJson = {
      "stimulusList": [
        {
          "id": 7,
          "value": 10,
          "type": "zap",
          "reason": "test 7",
          "sentAt": null,
          "sentBy": null,
          "sentTo": null,
          "createdAt": null,
          "updatedAt": null,
          "via": null,
          "message": null,
          "pushedAt": null,
          "failedAt": null,
          "failureMessage": null,
          "sentByApp": null,
          "pattern": null,
          "repeat": null,
          "deleted": null,
          "userDate": null,
          "recent": null,
          "meta": null
        },
        {
          "id": 8,
          "value": 38,
          "type": "zap",
          "reason": "test 8",
          "sentAt": null,
          "sentBy": null,
          "sentTo": null,
          "createdAt": null,
          "updatedAt": null,
          "via": null,
          "message": null,
          "pushedAt": null,
          "failedAt": null,
          "failureMessage": null,
          "sentByApp": null,
          "pattern": null,
          "repeat": null,
          "deleted": null,
          "userDate": null,
          "recent": null,
          "meta": null
        },
        {
          "id": 9,
          "value": 20,
          "type": "beep",
          "reason": "test 9",
          "sentAt": null,
          "sentBy": null,
          "sentTo": null,
          "createdAt": null,
          "updatedAt": null,
          "via": null,
          "message": null,
          "pushedAt": null,
          "failedAt": null,
          "failureMessage": null,
          "sentByApp": null,
          "pattern": null,
          "repeat": null,
          "deleted": null,
          "userDate": null,
          "recent": null,
          "meta": null
        },
        {
          "id": 10,
          "value": 40,
          "type": "beep",
          "reason": "test 10",
          "sentAt": null,
          "sentBy": null,
          "sentTo": null,
          "createdAt": null,
          "updatedAt": null,
          "via": null,
          "message": null,
          "pushedAt": null,
          "failedAt": null,
          "failureMessage": null,
          "sentByApp": null,
          "pattern": null,
          "repeat": null,
          "deleted": null,
          "userDate": null,
          "recent": null,
          "meta": null
        },
        {
          "id": 11,
          "value": 80,
          "type": "beep",
          "reason": "test 11",
          "sentAt": null,
          "sentBy": null,
          "sentTo": null,
          "createdAt": null,
          "updatedAt": null,
          "via": null,
          "message": null,
          "pushedAt": null,
          "failedAt": null,
          "failureMessage": null,
          "sentByApp": null,
          "pattern": null,
          "repeat": null,
          "deleted": null,
          "userDate": null,
          "recent": null,
          "meta": null
        },
        {
          "id": 12,
          "value": 10,
          "type": "vibe",
          "reason": "test 12",
          "sentAt": null,
          "sentBy": null,
          "sentTo": null,
          "createdAt": null,
          "updatedAt": null,
          "via": null,
          "message": null,
          "pushedAt": null,
          "failedAt": null,
          "failureMessage": null,
          "sentByApp": null,
          "pattern": null,
          "repeat": null,
          "deleted": null,
          "userDate": null,
          "recent": null,
          "meta": null
        }
      ],
      "error": null,
    };

    /// assert
    expect(result, equals(exceptedJson));
  });
}
