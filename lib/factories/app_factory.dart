import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/main.dart';
import 'package:flutter/material.dart';

AppFactory appFactory() => AppFactoryImpl();

class AppFactoryImpl implements AppFactory {
  final _diContainer = DIContainer();

  AppFactoryImpl();

  @override
  Widget makeApp() => MyApp(appRoute: _diContainer.makeRoute());
}
