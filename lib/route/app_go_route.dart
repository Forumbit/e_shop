import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/features/app/widgets/screens/home_page.dart';
import 'package:e_shop/features/app/widgets/screens/loader_page.dart';
import 'package:e_shop/features/app/widgets/app.dart';
import 'package:e_shop/features/auth/widgets/screens/email_verification_page.dart';
import 'package:e_shop/features/auth/widgets/screens/login_page.dart';
import 'package:e_shop/features/auth/widgets/screens/reset_password_page.dart';
import 'package:e_shop/features/auth/widgets/screens/sign_up_page.dart';
import 'package:e_shop/features/cart/widgets/screens/cart_page.dart';
import 'package:e_shop/features/category/widgets/screens/category_list_page.dart';
import 'package:e_shop/features/common/enum/product_list_enum.dart';
import 'package:e_shop/features/product/presentation/pages/product_detail_page.dart';
import 'package:e_shop/features/product/presentation/pages/product_list_page.dart';
import 'package:e_shop/features/user/presentation/pages/user_page.dart';
import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/features/common/widgets/custom_widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppGoRoute implements AppRoute {
  @override
  RouterConfig<Object>? get router => GoRouter(
        initialLocation: AppRouteUrl.loader,
        routes: [
          GoRoute(
            path: AppRouteUrl.loader,
            builder: (context, state) => const LoaderPage(),
          ),
          GoRoute(
            path: AppRouteUrl.login,
            builder: (context, state) => const LoginPage(),
          ),
          GoRoute(
            path: AppRouteUrl.signUp,
            builder: (context, state) => const SignUpPage(),
          ),
          GoRoute(
            path: AppRouteUrl.resetPassword,
            builder: (context, state) => const ResetPasswordPage(),
          ),
          GoRoute(
            path: AppRouteUrl.verifyEmail,
            builder: (context, state) => const VerifyEmailPage(),
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
                        const HomePage(),
                    routes: [
                      GoRoute(
                        name: AppRouteNamed.categoryList,
                        path: AppRouteUrl.categoryList,
                        builder: (BuildContext context, GoRouterState state) =>
                            const CategoryListPage(),
                      ),
                      GoRoute(
                        name: AppRouteNamed.popularProduct,
                        path: AppRouteUrl.popularProductList,
                        builder: (BuildContext context, GoRouterState state) =>
                            const ProductListPage(
                          productListEnum: ProductListEnum.popular,
                        ),
                      ),
                      GoRoute(
                        name: AppRouteNamed.categoryProduct,
                        path: AppRouteUrl.categoryProductList,
                        builder: (BuildContext context, GoRouterState state) =>
                            ProductListPage(
                          parameter:
                              state.pathParameters[AppRouteArgument.category] ??
                                  '',
                          productListEnum: ProductListEnum.category,
                        ),
                      ),
                      GoRoute(
                        name: AppRouteNamed.searchProduct,
                        path: AppRouteUrl.searchProductList,
                        builder: (BuildContext context, GoRouterState state) =>
                            ProductListPage(
                          parameter:
                              state.pathParameters[AppRouteArgument.query] ??
                                  '',
                          productListEnum: ProductListEnum.search,
                        ),
                      ),
                      GoRoute(
                        name: AppRouteNamed.productDetail,
                        path: AppRouteUrl.productDetail,
                        builder: (BuildContext context, GoRouterState state) {
                          final id = int.tryParse(
                              state.pathParameters[AppRouteArgument.id] ?? '');
                          if (id == null) return Container();
                          return ProductDetailPage(id: id);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: AppRouteUrl.cart,
                    builder: (BuildContext context, GoRouterState state) =>
                        const CartPage(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: AppRouteUrl.favorite,
                    builder: (BuildContext context, GoRouterState state) =>
                        const Scaffold(
                      body: Center(
                        child: Text(AppTexts.favorite),
                      ),
                    ),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: AppRouteUrl.profile,
                    builder: (BuildContext context, GoRouterState state) =>
                        const UserPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
