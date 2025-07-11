import 'package:flutter_test/flutter_test.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

void main() {
  group('RegisterStatusX', () {
    test('returns correct values for RegisterStatus.loading', () {
      const status = RegisterState.loading();
      expect(status, const RegisterState.loading());
    });

    test('returns correct values for RegisterStatus.success', () {
      const status = RegisterState.success(null);
      expect(status, const RegisterState.success(null));
    });

    test('returns correct values for RegisterStatus.failure', () {
      const status = RegisterState.failure("");
      expect(status, const RegisterState.failure(""));
    });
  });
}
