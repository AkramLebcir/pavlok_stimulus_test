import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pavlok_stimulus_test/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  return SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((_) => runApp(MyApp()));
}