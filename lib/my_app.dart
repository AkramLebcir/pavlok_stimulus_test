import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pavlok_stimulus_test/core/app_route.dart';

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
              title: "app"
            ),
          );
        },
      ),
    );
  }
}
