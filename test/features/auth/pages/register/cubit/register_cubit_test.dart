import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/dependencies_injection.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

import '../../../../../helpers/fake_path_provider_platform.dart';
import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';
import 'register_cubit_test.mocks.dart';

@GenerateMocks([PostRegister])
void main() {
  late RegisterCubit registerCubit;
  late MockPostRegister mockPostRegister;
  late Register register;

  const registerParams = RegisterParams(
    email: "dummy@gmail.com",
    password: "dummyPassword",
  );

  const errorMessage = "Invalid data";

  /// Initialize data
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(isUnitTest: true, prefixBox: 'register_cubit_test_');
    register = RegisterResponse.fromJson(
      json.decode(jsonReader(successRegisterPath)) as Map<String, dynamic>,
    ).toEntity();
    mockPostRegister = MockPostRegister();
    registerCubit = RegisterCubit(mockPostRegister);
  });

  /// Dispose bloc
  tearDown(() {
    registerCubit.close();
  });

  /// Test init data should be loading
  test("Initial state should be RegisterStatus.loading", () {
    expect(registerCubit.state, const RegisterState.loading());
  });

  blocTest<RegisterCubit, RegisterState>(
    "When repo success get data should be return RegisterState",
    build: () {
      when(
        mockPostRegister.call(registerParams),
      ).thenAnswer((_) async => Right(register));

      return registerCubit;
    },
    act: (RegisterCubit registerCubit) => registerCubit.register(
      registerParams,
    ),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const RegisterState.loading(),
      RegisterState.success(register),
    ],
  );

  blocTest<RegisterCubit, RegisterState>(
    "When repo success get data should be return ServerFailure",
    build: () {
      when(mockPostRegister.call(registerParams)).thenAnswer((_) async => const Left(ServerFailure(errorMessage)));

      return registerCubit;
    },
    act: (RegisterCubit registerCubit) => registerCubit.register(
      registerParams,
    ),
    expect: () => const [RegisterState.loading(), RegisterState.failure(errorMessage)],
  );
}
