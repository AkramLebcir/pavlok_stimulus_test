import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:pavlok_stimulus_test/dependencies_injection.dart';
import 'package:pavlok_stimulus_test/features/features.dart';
import 'package:pavlok_stimulus_test/utils/utils.dart';

import '../../../../../helpers/fake_path_provider_platform.dart';

void main() {
  late SettingsCubit settingsCubit;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(isUnitTest: true, prefixBox: 'settings_cubit_test_');
    settingsCubit = SettingsCubit();
  });

  blocTest(
    "The theme should be system",
    build: () {
      return settingsCubit;
    },
    act: (SettingsCubit settingsCubit) => settingsCubit.updateTheme(ActiveTheme.system),
    expect: () => [
      isA<DataHelper>(),
    ],
  );
}
