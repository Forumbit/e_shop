import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  final logger = Logger();

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
    logger.i('On Change: \n${bloc.runtimeType}: $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.i('On Transition: \n${bloc.runtimeType}: $transition');
  }
}
