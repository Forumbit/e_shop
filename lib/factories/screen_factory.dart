import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/features/auth/presentation/pages/loader_page.dart';
import 'package:e_shop/features/auth/presentation/pages/login_page.dart';
import 'package:e_shop/features/auth/presentation/pages/reset_password_page.dart';
import 'package:e_shop/features/auth/presentation/pages/sign_up_page.dart';
import 'package:e_shop/features/auth/presentation/pages/verify_email_page.dart';
import 'package:e_shop/features/category/presentation/pages/category_list_page.dart';
import 'package:e_shop/features/product/domain/enum/product_list_enum.dart';
import 'package:e_shop/features/product/presentation/pages/home_page.dart';
import 'package:e_shop/features/product/presentation/pages/product_detail_page.dart';
import 'package:e_shop/features/product/presentation/pages/product_list_page.dart';
import 'package:e_shop/route/app_go_route.dart';
import 'package:flutter/material.dart';

class ScreenFactoryDefault implements ScreenFactory {
  final _diContainer = DIContainer();

  @override
  Widget makeLoader() => const LoaderPage();

  @override
  Widget makeLogin() => ProviderValue(
        value: _diContainer,
        child: const LoginPage(),
      );

  @override
  Widget makeSignUp() => ProviderValue(
        value: _diContainer,
        child: const SignUpPage(),
      );

  @override
  Widget makeVerifyEmail() => VerifyEmailPage(
        authRepository: _diContainer.getAuthRepository(),
      );

  @override
  Widget makeResetPassword() => ResetPasswordPage(
        authRepository: _diContainer.getAuthRepository(),
      );

  @override
  Widget makeHome() => ProviderValue<DIContainer>(
        value: _diContainer,
        child: const HomePage(),
      );

  @override
  Widget makeCategoryList() => ProviderValue<DIContainer>(
        value: _diContainer,
        child: const CategoryListPage(),
      );

  @override
  Widget makePopularProductList() => ProviderValue<DIContainer>(
        value: _diContainer,
        child: const ProductListPage(
          productListEnum: ProductListEnum.popular,
        ),
      );

  @override
  Widget makeCategoryProductList(String category) => ProviderValue<DIContainer>(
        value: _diContainer,
        child: ProductListPage(
          productListEnum: ProductListEnum.category,
          parameter: category,
        ),
      );

  @override
  Widget makeSearchProductList(String query) => ProviderValue<DIContainer>(
        value: _diContainer,
        child: ProductListPage(
          productListEnum: ProductListEnum.search,
          parameter: query,
          // controllerText: query,
        ),
      );

  @override
  Widget makeProductDetail(int id) => ProviderValue<DIContainer>(
        value: _diContainer,
        child: ProductDetailPage(id: id),
      );

  @override
  Widget makeProfile() => Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text('User'),
              IconButton(
                onPressed: () async {
                  final repository = _diContainer.getAuthRepository();
                  await repository.logout();
                },
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
        ),
      );
}
