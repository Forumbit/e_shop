import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
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
          category: category,
        ),
      );

  @override
  Widget makeSearchProductList(String query) => ProviderValue<DIContainer>(
        value: _diContainer,
        child: ProductListPage(
          productListEnum: ProductListEnum.search,
          category: query,
          // controllerText: query,
        ),
      );

  @override
  Widget makeProductDetail(int id) => ProviderValue<DIContainer>(
        value: _diContainer,
        child: ProductDetailPage(id: id),
      );
}
