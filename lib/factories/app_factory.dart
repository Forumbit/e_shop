import 'package:e_shop/common/utils/observer/app_bloc_observer.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

AppFactory appFactory() => AppFactoryImpl();

class AppFactoryImpl implements AppFactory {
  final _diContainer = DIContainer();

  AppFactoryImpl();

  @override
  void initialize() {
    Bloc.observer = AppBlocObserver();
  }
  @override
  Widget makeApp() => MyApp(appRoute: _diContainer.makeRoute());
  
}
