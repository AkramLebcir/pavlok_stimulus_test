import 'package:logger/logger.dart';

final log = Logger(
  level: ["sandbox", "staging"].contains(const String.fromEnvironment('ENV')) ? Level.all : Level.info,
  printer: PrettyPrinter(
    methodCount: 1,
    lineLength: 110,
  ),
);