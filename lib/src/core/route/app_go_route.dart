import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/app/widgets/loader_scope.dart';
import 'package:e_shop/src/features/app/widgets/screens/home_page.dart';
import 'package:e_shop/src/features/app/widgets/screens/loader_page.dart';
import 'package:e_shop/src/features/app/widgets/app.dart';
import 'package:e_shop/src/features/auth/widgets/auth_scope.dart';
import 'package:e_shop/src/features/auth/widgets/email_verification_scope.dart';
import 'package:e_shop/src/features/auth/widgets/screens/email_verification_page.dart';
import 'package:e_shop/src/features/auth/widgets/screens/login_page.dart';
import 'package:e_shop/src/features/auth/widgets/screens/reset_password_page.dart';
import 'package:e_shop/src/features/auth/widgets/screens/sign_up_page.dart';
import 'package:e_shop/src/features/cart/widgets/cart_scope.dart';
import 'package:e_shop/src/features/cart/widgets/screens/cart_page.dart';
import 'package:e_shop/src/features/category/widgets/category_list_scope.dart';
import 'package:e_shop/src/features/category/widgets/screens/category_list_page.dart';
import 'package:e_shop/src/core/common/enum/product_list_enum.dart';
import 'package:e_shop/src/features/product/widgets/product_detail_scope.dart';
import 'package:e_shop/src/features/product/widgets/product_list_scope.dart';
import 'package:e_shop/src/features/product/widgets/screens/product_detail_page.dart';
import 'package:e_shop/src/features/product/widgets/screens/product_list_page.dart';
import 'package:e_shop/src/features/user/widgets/screens/user_page.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/core/common/widgets/custom_widgets/custom_bottom_bar.dart';
import 'package:e_shop/src/features/user/widgets/user_scope.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppGoRoute implements AppRoute {
  @override
  RouterConfig<Object>? get router => GoRouter(
        initialLocation: AppRouteUrl.loader,
        routes: [
          GoRoute(
            path: AppRouteUrl.loader,
            builder: (context, state) => const LoaderScope(child: LoaderPage()),
          ),
          GoRoute(
            path: AppRouteUrl.login,
            builder: (context, state) => const AuthScope(child: LoginPage()),
          ),
          GoRoute(
            path: AppRouteUrl.signUp,
            builder: (context, state) => const AuthScope(child: SignUpPage()),
          ),
          GoRoute(
            path: AppRouteUrl.resetPassword,
            builder: (context, state) => const AuthScope(
              child: ResetPasswordPage(),
            ),
          ),
          GoRoute(
            path: AppRouteUrl.verifyEmail,
            builder: (context, state) => const EmailVerificationScope(
              child: VerifyEmailPage(),
            ),
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
                        const CategoryListScope(child: HomePage()),
                    routes: [
                      GoRoute(
                        name: AppRouteNamed.categoryList,
                        path: AppRouteUrl.categoryList,
                        builder: (BuildContext context, GoRouterState state) =>
                            const CategoryListScope(child: CategoryListPage()),
                      ),
                      GoRoute(
                        name: AppRouteNamed.popularProduct,
                        path: AppRouteUrl.popularProductList,
                        builder: (BuildContext context, GoRouterState state) =>
                            const ProductListScope(
                          parameter: null,
                          productListEnum: ProductListEnum.popular,
                          child: ProductListPage(
                            productListEnum: ProductListEnum.popular,
                          ),
                        ),
                      ),
                      GoRoute(
                        name: AppRouteNamed.categoryProduct,
                        path: AppRouteUrl.categoryProductList,
                        builder: (BuildContext context, GoRouterState state) =>
                            ProductListScope(
                          parameter:
                              state.pathParameters[AppRouteArgument.category] ??
                                  '',
                          productListEnum: ProductListEnum.category,
                          child: ProductListPage(
                            parameter: state.pathParameters[
                                    AppRouteArgument.category] ??
                                '',
                            productListEnum: ProductListEnum.category,
                          ),
                        ),
                      ),
                      GoRoute(
                        name: AppRouteNamed.searchProduct,
                        path: AppRouteUrl.searchProductList,
                        builder: (BuildContext context, GoRouterState state) =>
                            ProductListScope(
                          parameter:
                              state.pathParameters[AppRouteArgument.query] ??
                                  '',
                          productListEnum: ProductListEnum.search,
                          child: ProductListPage(
                            parameter:
                                state.pathParameters[AppRouteArgument.query] ??
                                    '',
                            productListEnum: ProductListEnum.search,
                          ),
                        ),
                      ),
                      GoRoute(
                        name: AppRouteNamed.productDetail,
                        path: AppRouteUrl.productDetail,
                        builder: (BuildContext context, GoRouterState state) {
                          final id = int.tryParse(
                              state.pathParameters[AppRouteArgument.id] ?? '');
                          if (id == null) return Container();
                          return ProductDetailScope(
                            id: id,
                            child: ProductDetailPage(id: id),
                          );
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
                        const CartScope(child: CartPage()),
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
                        const UserScope(child: UserPage()),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
