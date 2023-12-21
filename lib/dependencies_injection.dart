import 'package:get_it/get_it.dart';
import 'package:pavlok_stimulus_test/features/features.dart';
import 'package:pavlok_stimulus_test/utils/utils.dart';

import 'core/core.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({
  bool isUnitTest = false,
  bool isHiveEnable = true,
  String prefixBox = '',
}) async {
  /// For unit testing only
  if (isUnitTest) {
    await sl.reset();
  }
  sl.registerSingleton<DioClient>(DioClient(isUnitTest: isUnitTest));
  _dataSources();
  _repositories();
  _useCase();
  _cubit();
  _bloc();
  if (isHiveEnable) {
    await _initHiveBoxes(
      isUnitTest: isUnitTest,
      prefixBox: prefixBox,
    );
  }
}

Future<void> _initHiveBoxes({
  bool isUnitTest = false,
  String prefixBox = '',
}) async {
  await MainBoxMixin.initHive(prefixBox);
  sl.registerSingleton<MainBoxMixin>(MainBoxMixin());
}

/// Register repositories
void _repositories() {
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl(), sl()),
  );
  sl.registerLazySingleton<StimulusRepository>(() => StimulusRepositoryImpl(sl()));
}

/// Register dataSources
void _dataSources() {
  sl.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(sl()),
  );
  sl.registerLazySingleton<StimulusRemoteDatasource>(
    () => StimulusRemoteDatasourceImpl(sl()),
  );
}

void _useCase() {
  /// Auth
  sl.registerLazySingleton(() => PostLogin(sl()));
  sl.registerLazySingleton(() => PostRegister(sl()));
  sl.registerLazySingleton(() => PostForgetPassword(sl()));

  /// Stimulus
  sl.registerLazySingleton(() => GetStimulus(sl()));
  sl.registerLazySingleton(() => PostStimulus(sl()));
}

void _cubit() {
  /// Auth
  sl.registerFactory(() => RegisterCubit(sl()));
  sl.registerFactory(() => ForgetPasswordCubit(sl()));
  sl.registerFactory(() => AuthCubit(sl()));

  /// General
  sl.registerFactory(() => SettingsCubit());
  sl.registerFactory(() => MainCubit());

  /// Stimulus
  sl.registerFactory(() => CreateStimulusCubit(sl()));
}

void _bloc(){
  /// Stimulus
  sl.registerFactory(() => StimulusBloc(sl()));
}
