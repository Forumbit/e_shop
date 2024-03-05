import 'dart:async';

import 'package:e_shop/src/core/common/utils/logger_utils.dart';
import 'package:e_shop/src/factories/app_factory.dart';
import 'package:flutter/material.dart';

abstract interface class AppFactory {
  Future<void> initialize();
  Widget makeApp();
}

void main() async {
  runZonedGuarded(
    () async {
      final app = appFactory();
      await app.initialize();
      runApp(app.makeApp());
    },
    (error, stack) => logger.e(
      'Zone Exceptions',
      error: error,
      stackTrace: stack,
    ),
  );
}
