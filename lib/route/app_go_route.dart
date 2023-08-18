import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract interface class ScreenFactory {
  Widget makeHome();
  Widget makePopularProductList();
  Widget makeCategoryProductList(String category);
  Widget makeSearchProductList(String query);
}

class AppGoRoute implements AppRoute {
  final ScreenFactory screenFactory;
  AppGoRoute({required this.screenFactory});

  @override
  RouterConfig<Object>? get router => GoRouter(
        routes: [
          GoRoute(
            path: AppRouteUrl.home,
            builder: (BuildContext context, GoRouterState state) =>
                screenFactory.makeHome(),
          ),
          GoRoute(
            path: AppRouteUrl.popularProductList,
            builder: (BuildContext context, GoRouterState state) =>
                screenFactory.makePopularProductList(),
          ),
          GoRoute(
            name: AppRouteNamed.categoryProduct,
            path: AppRouteUrl.categoryProductList,
            builder: (BuildContext context, GoRouterState state) =>
                screenFactory.makeCategoryProductList(
              state.pathParameters[AppRouteArgument.category] ?? '',
            ),
          ),
          GoRoute(
            name: AppRouteNamed.searchProduct,
            path: AppRouteUrl.searchProductList,
            builder: (BuildContext context, GoRouterState state) =>
                screenFactory.makeSearchProductList(
              state.pathParameters[AppRouteArgument.query] ?? '',
            ),
          ),
        ],
      );
}
