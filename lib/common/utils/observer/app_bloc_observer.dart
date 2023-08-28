// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('===================');
    print('On Event:\n');
    print('${bloc.runtimeType}: \n$event');
    print('===================');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('===================');
    print('On Error:\n');
    print('${bloc.runtimeType}: \n$error\n');
    print('Stacktrace: \n$stackTrace');
    print('===================');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('===================');
    print('On Change:\n');
    print('${bloc.runtimeType}: \n$change');
    print('===================');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('===================');
    print('On Transition:\n');
    print('${bloc.runtimeType}: \n$transition');
    print('===================');
  }
}
