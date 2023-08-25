import 'package:e_shop/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/product/bloc/product_list/product_list_bloc.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/features/product/presentation/widgets/home_widgets/about_us_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/shimmer_loading_widgets/popular_product_loading_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/home_widgets/popular_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 80.h,
        // title: const SearchWidget(),
      ),
      body: Shimmer(
        child: ListView(
          children: [
            SizedBox(height: 9.h),
            // BlocBuilder<CategoryBloc, CategoryState>(
            //   builder: (context, state) {
            //     return state.when(
            //       initial: () => const CategoryListLoadingWidget(),
            //       loading: () => const CategoryListLoadingWidget(),
            //       loaded: (List<String> categories) =>
            //           CategoryListWidget(categories: categories),
            //       error: () =>
            //           const Center(child: Text('Произошла какая-то ошибка')),
            //     );
            //   },
            // ),
            SizedBox(height: 17.h),
            BlocBuilder<ProductListBloc, ProductListState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const PopularProductLoadingWidget(),
                  loading: () => const PopularProductLoadingWidget(),
                  loaded: (ProductListEntity productList, _) =>
                      PopularProductWidget(products: productList.products),

                  //! Maybe it is wrong!
                  newProductsLoaded: (_, __) => const SizedBox.shrink(),
                  error: () =>
                      const Center(child: Text('Something went wrong')),
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
