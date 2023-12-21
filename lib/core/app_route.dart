import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pavlok_stimulus_test/dependencies_injection.dart';
import 'package:pavlok_stimulus_test/features/features.dart';
import 'package:pavlok_stimulus_test/utils/utils.dart';

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),

  /// Home Page
  dashboard("/dashboard"),
  user("/user"),
  settings("/settings"),

  /// Auth Page
  login("/auth/login"),
  register("/auth/register"),
  forgetPassword("/auth/forget_password"),
  ;

  const Routes(this.path);

  final String path;
}

class AppRoute {
  static late BuildContext context;

  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashScreen.path,
        name: Routes.splashScreen.name,
        builder: (_, __) => const SplashScreenPage(),
      ),
      GoRoute(
        path: Routes.root.path,
        name: Routes.root.name,
        redirect: (_, __) => Routes.dashboard.path,
      ),
      GoRoute(
        path: Routes.login.path,
        name: Routes.login.name,
        builder: (_, __) => const LoginPage(),
      ),
      GoRoute(
        path: Routes.register.path,
        name: Routes.register.name,
        builder: (_, __) => BlocProvider(
          create: (_) => sl<RegisterCubit>(),
          child: const RegisterPage(),
        ),
      ),
      GoRoute(
        path: Routes.forgetPassword.path,
        name: Routes.forgetPassword.name,
        builder: (_, __) => BlocProvider(
          create: (_) => sl<ForgetPasswordCubit>(),
          child: const ForgetPasswordPage(),
        ),
      ),
      ShellRoute(
        builder: (_, __, child) => BlocProvider(
          create: (context) => sl<MainCubit>(),
          child: MainPage(child: child),
        ),
        routes: [
          GoRoute(
            path: Routes.dashboard.path,
            name: Routes.dashboard.name,
            builder: (_, __) => BlocProvider(
              create: (_) => sl<StimulusBloc>()..add(const StimulusEvent.loadStimulus(StimulusParams())),
              child: const DashboardPage(),
            ),
          ),
          GoRoute(
            path: Routes.user.path,
            name: Routes.user.name,
            builder: (_, __) => BlocProvider(
              create: (context) => sl<UserCubit>(),
              child: const UserPage(),
            ),
          ),
          GoRoute(
            path: Routes.settings.path,
            name: Routes.settings.name,
            builder: (_, __) => const SettingsPage(),
          ),
        ],
      ),
    ],
    initialLocation: Routes.splashScreen.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
    refreshListenable: GoRouterRefreshStream(context.read<AuthCubit>().stream),
    redirect: (_, GoRouterState state) {
      final bool isLoginPage = state.matchedLocation == Routes.login.path ||
          state.matchedLocation == Routes.register.path ||
          state.matchedLocation == Routes.forgetPassword.path;

      if (!((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ?? false)) {
        return isLoginPage ? null : Routes.login.path;
      }

      if (isLoginPage && ((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ?? false)) {
        return Routes.root.path;
      }

      /// No direct
      return null;
    },
  );
}
