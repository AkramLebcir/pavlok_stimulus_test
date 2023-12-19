<br>

# Flutter Pavlok App

All API using [pavlok.readme.io](https://pavlok.readme.io).
<br>This app also implementing **Flutter Clean Architecture with TDD.**

## Pre-requisites 📐

| Technology | Recommended Version | Installation Guide                                                    |
|------------|---------------------|-----------------------------------------------------------------------|
| Flutter    | v3.10.x             | [Flutter Official Docs](https://flutter.dev/docs/get-started/install) |
| Dart       | v3.0.x              | Installed automatically with Flutter                                  |

## Get Started 🚀

- Clone this project
- Run `flutter pub get`
- Run `flutter gen-l10n` to generate localization files
- Run `flutter pub run build_runner build --delete-conflicting-outputs` to generate freezes files
- Run `flutter run --flavor sandbox -t lib/main.dart --dart-define-from-file .env.sandbox.json` for **sandbox**
- Run `flutter run --flavor staging -t lib/main.dart --dart-define-from-file .env.staging.json` for **staging**
- Run `flutter run --flavor prod -t lib/main.dart --dart-define-from-file .env.prod.json` for **production**
- Run Test `flutter test`
- To generate launcher icon based on Flavor `dart run flutter_launcher_icons`
- To generate mock class `dart pub run build_runner build`