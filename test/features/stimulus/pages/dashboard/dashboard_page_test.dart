import 'dart:convert';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart'; // ignore: depend_on_referenced_packages
import 'package:mocktail/mocktail.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/dependencies_injection.dart';
import 'package:pavlok_stimulus_test/features/features.dart';

import '../../../../helpers/fake_path_provider_platform.dart';
import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

class MockStimulusBloc extends MockBloc<StimulusEvent, StimulusState> implements StimulusBloc {}

class FakeStimulusState extends Fake implements StimulusState {}

void main() {
  late StimulusBloc stimulusBloc;
  late Stimuli stimulus;

  setUpAll(() {
    HttpOverrides.global = null;
    registerFallbackValue(FakeStimulusState());
    registerFallbackValue(const StimulusParams());
  });

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(isUnitTest: true, prefixBox: 'dashboard_page_test_');
    stimulusBloc = MockStimulusBloc();
    stimulus = StimuliResponse.fromJson(
      json.decode(jsonReader(successStimulusPath)) as Map<String, dynamic>,
    ).toEntity();
  });

  Widget rootWidget(Widget body) {
    return BlocProvider<StimulusBloc>.value(
      value: stimulusBloc,
      child: ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, __) => MaterialApp(
          localizationsDelegates: const [
            Strings.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: const Locale("en"),
          theme: themeLight(MockBuildContext()),
          home: body,
        ),
      ),
    );
  }

  testWidgets(
    'renders DashboardPage for StimulusStatus.loading',
    (tester) async {
      when(() => stimulusBloc.state).thenReturn(const StimulusState.loading());
      await tester.pumpWidget(rootWidget(const DashboardPage()));
      await tester.pump();
      expect(find.byType(Loading), findsOneWidget);
    },
  );

  testWidgets(
    'renders DashboardPage for StimulusStatus.empty',
    (tester) async {
      when(() => stimulusBloc.state).thenReturn(const StimulusState.empty());
      await tester.pumpWidget(rootWidget(const DashboardPage()));
      await tester.pump();
      expect(find.byType(Empty), findsOneWidget);
    },
  );

  testWidgets(
    'renders DashboardPage for StimulusStatus.failure',
    (tester) async {
      when(() => stimulusBloc.state).thenReturn(const StimulusState.failure(""));
      await tester.pumpWidget(rootWidget(const DashboardPage()));
      await tester.pump();
      expect(find.byType(Empty), findsOneWidget);
    },
  );

  testWidgets(
    'renders DashboardPage for StimulusStatus.success',
    (tester) async {
      when(() => stimulusBloc.state).thenReturn(
        StimulusState.success(stimulus),
      );
      await tester.pumpWidget(rootWidget(const DashboardPage()));
      await tester.pumpAndSettle();
      expect(find.byType(ListView), findsOneWidget);
    },
  );

  testWidgets(
    'trigger refresh when pull to refresh',
    (tester) async {
      when(() => stimulusBloc.state).thenReturn(
        StimulusState.success(stimulus),
      );
      when(() => stimulusBloc.add(const StimulusEvent.loadStimulus(StimulusParams()))).thenAnswer((_) async {});

      await tester.pumpWidget(rootWidget(const DashboardPage()));
      await tester.pumpAndSettle();

      for (int i = 0; i < 5; i++) {
        await tester.pump(const Duration(milliseconds: 100));
      }
      verify(() => stimulusBloc.add(const StimulusEvent.loadStimulus(StimulusParams()))).called(1);
    },
  );
}
