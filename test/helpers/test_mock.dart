import 'package:flutter/cupertino.dart';
import 'package:mockito/annotations.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

@GenerateMocks([
  AuthRepository,
  AuthRemoteDatasource,
])
@GenerateNiceMocks([MockSpec<BuildContext>()])
void main() {}
