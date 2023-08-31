import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/features/widgets/custom_bottom_bar.dart';
import 'package:e_shop/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract interface class ScreenFactory {
  Widget makeLoader();
  Widget makeHome();
  Widget makeLogin();
  Widget makeVerifyEmail();
  Widget makeSignUp();
  Widget makeResetPassword();
  Widget makeCategoryList();
  Widget makePopularProductList();
  Widget makeCategoryProductList(String category);
  Widget makeSearchProductList(String query);
  Widget makeProductDetail(int id);
  Widget makeProfile();
}

class AppGoRoute implements AppRoute {
  final ScreenFactory screenFactory;
  AppGoRoute({required this.screenFactory});

  @override
  RouterConfig<Object>? get router => GoRouter(
        initialLocation: AppRouteUrl.loader,
        routes: [
          GoRoute(
            path: AppRouteUrl.loader,
            builder: (context, state) => screenFactory.makeLoader(),
          ),
          GoRoute(
            path: AppRouteUrl.login,
            builder: (context, state) => screenFactory.makeLogin(),
          ),
          GoRoute(
            path: AppRouteUrl.signUp,
            builder: (context, state) => screenFactory.makeSignUp(),
          ),
          GoRoute(
            path: AppRouteUrl.resetPassword,
            builder: (context, state) => screenFactory.makeResetPassword(),
          ),
          GoRoute(
            path: AppRouteUrl.verifyEmail,
            builder: (context, state) => screenFactory.makeVerifyEmail(),
          ),
          StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) =>
                CustomBottomBar(navigationShell: navigationShell),
            branches: [
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: AppRouteUrl.home,
                    builder: (BuildContext context, GoRouterState state) =>
                        screenFactory.makeHome(),
                    routes: [
                      GoRoute(
                        name: AppRouteNamed.categoryList,
                        path: AppRouteUrl.categoryList,
                        builder: (BuildContext context, GoRouterState state) =>
                            screenFactory.makeCategoryList(),
                      ),
                      GoRoute(
                        name: AppRouteNamed.popularProduct,
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
                      GoRoute(
                        name: AppRouteNamed.productDetail,
                        path: AppRouteUrl.productDetail,
                        builder: (BuildContext context, GoRouterState state) {
                          final id = int.tryParse(
                              state.pathParameters[AppRouteArgument.id] ?? '');
                          if (id == null) return Container();
                          return screenFactory.makeProductDetail(id);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/cart',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Scaffold(
                      body: Center(
                        child: Text('Cart'),
                      ),
                    ),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/favorite',
                    builder: (BuildContext context, GoRouterState state) =>
                        const Scaffold(
                      body: Center(
                        child: Text('Favorite'),
                      ),
                    ),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/profile',
                    builder: (BuildContext context, GoRouterState state) =>
                        screenFactory.makeProfile(),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
