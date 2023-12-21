import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final log = Logger(
  level: ["sandbox", "staging"].contains(const String.fromEnvironment('ENV')) ? Level.all : Level.all,
  printer: PrettyPrinter(
    methodCount: 1,
    lineLength: 110,
  ),
);

IconData getIcon(String type) {
  switch (type) {
    case 'zap':
      return Icons.record_voice_over_outlined;
    case 'beep':
      return Icons.notifications_active;
    case 'vibe':
      return Icons.vibration;
    default:
      return Icons.vibration;
  }
}