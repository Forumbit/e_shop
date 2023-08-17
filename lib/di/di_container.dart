import 'package:e_shop/features/product/presentation/pages/product_list_page.dart';
import 'package:e_shop/main.dart';
import 'package:e_shop/route/app_go_route.dart';
import 'package:flutter/material.dart';
import 'package:e_shop/features/product/presentation/pages/home_page.dart';

part 'screen_factory.dart';

AppFactory appFactory() => _AppFactoryImpl();

class _AppFactoryImpl implements AppFactory {
  final _diContainer = _DIContainer();

  _AppFactoryImpl();

  @override
  Widget makeApp() => MyApp(appRoute: _diContainer._makeRoute());
}

class _DIContainer {
  ScreenFactory _makeScreenFactory() => _ScreenFactoryDefault();
  AppRoute _makeRoute() =>
      AppGoRoute(screenFactory: _makeScreenFactory());
}
