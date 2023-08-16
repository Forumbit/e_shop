import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:flutter/material.dart';

abstract interface class AppFactory {
  Widget makeApp();
}

final app = appFactory();

void main() {
  runApp(app.makeApp());
}

abstract interface class AppRoute {
  RouterConfig<Object>? get router;
}

class MyApp extends StatelessWidget {
  final RouterConfig<Object>? _router;
  MyApp({
    super.key,
    required AppRoute appRoute,
  }) : _router = appRoute.router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.mainColor,
        ),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
