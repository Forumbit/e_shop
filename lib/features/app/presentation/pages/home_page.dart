import 'package:e_shop/common/constants/app_error_text.dart';
import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/features/search/presentation/widgets/search_widget.dart';
import 'package:e_shop/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/category/presentation/bloc/category_list/category_list_bloc.dart';
import 'package:e_shop/features/category/presentation/widgets/products_of_category_list_loading_widget.dart';
import 'package:e_shop/features/category/presentation/widgets/products_of_category_list_widget.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/features/product/presentation/bloc/product_list/product_list_bloc.dart';
import 'package:e_shop/features/app/presentation/widgets/home_widgets/about_us_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/shimmer_loading_widgets/popular_product_loading_widget.dart';
import 'package:e_shop/features/app/presentation/widgets/home_widgets/popular_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context);

    final providers = <BlocProvider>[
      BlocProvider<CategoryListBloc>(
        create: (context) => CategoryListBloc(
          diContainer.getCategoryRepository(),
        )..add(const CategoryListEvent.started()),
      ),
      BlocProvider<ProductListBloc>(
        create: (context) => ProductListBloc(
          diContainer.getProductRepository(),
        )..add(const ProductListEvent.started()),
      ),
    ];

    return MultiBlocProvider(
      providers: providers,
      child: Scaffold(
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
      ),
    );
  }
}
