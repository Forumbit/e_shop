import 'package:e_shop/src/core/common/constants/app_error_text.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/features/search/widgets/search_widget.dart';
import 'package:e_shop/src/core/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/src/features/category/bloc/category_list/category_list_bloc.dart';
import 'package:e_shop/src/features/category/widgets/products_of_category_list_loading_widget.dart';
import 'package:e_shop/src/features/category/widgets/products_of_category_list_widget.dart';
import 'package:e_shop/src/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/src/features/product/bloc/product_list/product_list_bloc.dart';
import 'package:e_shop/src/features/app/widgets/home_widgets/about_us_widget.dart';
import 'package:e_shop/src/features/product/widgets/shimmer_loading_widgets/popular_product_loading_widget.dart';
import 'package:e_shop/src/features/app/widgets/home_widgets/popular_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 80.h,
        title: SearchWidget(
          onSubmitted: (String query) => context.pushNamed(
            AppRouteNamed.searchProduct,
            pathParameters: {
              AppRouteArgument.query: query,
            },
          ),
        ),
      ),
      body: Shimmer(
        child: ListView(
          children: [
            SizedBox(height: 7.h),
            BlocBuilder<CategoryListBloc, CategoryListState>(
              builder: (context, state) => state.maybeWhen(
                orElse: () => const CategoryListLoadingWidget(),
                loaded: (List<String> categories) =>
                    CategoryListWidget(categories: categories),
                error: () =>
                    const Center(child: Text(AppErrorText.commonError)),
              ),
            ),
            SizedBox(height: 17.h),
            BlocBuilder<ProductListBloc, ProductListState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const PopularProductLoadingWidget(),
                  loading: () => const PopularProductLoadingWidget(),
                  loaded: (ProductListEntity productList, _) =>
                      PopularProductWidget(products: productList.products),
                  error: () => const Center(
                    child: Text(
                      AppErrorText.commonError,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10.h),
            const AboutUsWidget(isLoading: false),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    );
  }
}
