import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pavlok_stimulus_test/core/core.dart';
import 'package:pavlok_stimulus_test/utils/utils.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return OKToast(
      child: ScreenUtilInit(
        /// Set screen size to make responsive
        /// Almost all device

        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, __) {
          /// Pass context to appRoute
          AppRoute.setStream(context);

          return Builder(
            builder: (context) => MaterialApp.router(
                routerConfig: AppRoute.router,
                localizationsDelegates: const [
                  Strings.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                debugShowCheckedModeBanner: false,
                builder: (BuildContext context, Widget? child) {
                  final MediaQueryData data = MediaQuery.of(context);

                  return MediaQuery(
                    data: data.copyWith(
                      textScaleFactor: 1,
                      alwaysUse24HourFormat: true,
                    ),
                    child: child!,
                  );
                },
              title: Constants.get.appName,
              locale: const Locale("en"),
              supportedLocales: L10n.all,
            ),
          );
        },
      ),
    );
  }
}
