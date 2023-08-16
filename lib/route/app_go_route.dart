import 'package:e_shop/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract interface class ScreenFactory {
  Widget makeHome();
}

class AppGoRoute implements AppRoute {
  final ScreenFactory screenFactory;
  AppGoRoute({required this.screenFactory});

  @override
  RouterConfig<Object>? get router => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) =>
                screenFactory.makeHome(),
          ),
        ],
      );
      
}
