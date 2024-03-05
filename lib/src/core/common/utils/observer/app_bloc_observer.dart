import 'dart:developer';

import 'package:e_shop/src/core/common/utils/logger_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.i('On Event: \n${bloc.runtimeType}: $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e(
      '${bloc.runtimeType}:',
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.i(
        'On Change: \n${bloc.runtimeType}: \n⏮️ Current state: ${change.currentState}\n⏭️ Next State: ${change.nextState}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('On Transition: ${bloc.runtimeType}');
  }
}
