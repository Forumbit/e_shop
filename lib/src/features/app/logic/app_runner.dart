import 'dart:async';

import 'package:e_shop/src/core/common/utils/logger_utils.dart';
import 'package:e_shop/src/core/common/utils/observer/app_bloc_observer.dart';
import 'package:e_shop/src/core/route/app_go_route.dart';
import 'package:e_shop/src/features/app/logic/initialization.dart';
import 'package:e_shop/src/features/app/widgets/app.dart';
import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

final class AppRunner {
  FutureOr<void> initializeAndRun() async {
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        // setup bloc
        Bloc.observer = AppBlocObserver();
        Bloc.transformer = bloc_concurrency.sequential();

        // setup Firebase
        await Firebase.initializeApp();

        // setup dependencies
        final initialization = Initialization();
        final dependencies = await initialization.initialize();

        // setup route
        final route = AppGoRoute();

        runApp(
          DependenciesScope(
            dependencies: dependencies,
            child: MyApp(appRoute: route),
          ),
        );
      },
      (error, stack) => logger.e(
        'Zone Exceptions',
        error: error,
        stackTrace: stack,
      ),
    );
  }
}
