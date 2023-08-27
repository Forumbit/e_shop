import 'package:e_shop/common/constants/app_gradients.dart';
import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/constants/app_shadows.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:e_shop/features/category/presentation/bloc/category_list/category_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: Shimmer(
          child: BlocBuilder<CategoryListBloc, CategoryListState>(
        builder: (context, state) => state.when(
          initial: () => const _CategoryGridViewWidget(),
          loading: () => const _CategoryGridViewWidget(),
          loaded: (categories) => _CategoryGridViewWidget(
            categories: categories,
          ),
          error: () => const Center(
            child: Text('Something went wrong'),
          ),
        ),
      )),
    );
  }
}

class _CategoryGridViewWidget extends StatelessWidget {
  const _CategoryGridViewWidget({this.categories});
  final List<String>? categories;

  @override
  Widget build(BuildContext context) {
    final isLoading = categories == null;
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 150 / 200,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        crossAxisCount: 2,
      ),
      itemCount: isLoading ? 10 : categories!.length,
      itemBuilder: (BuildContext context, int index) {
        return _CategoryGridViewItemWidget(
          isLoading: isLoading,
          gradientWithColors: AppGradients.gradientsWithColors[index % 5],
          category: categories?[index],
        );
      },
    );
  }
}

class _CategoryGridViewItemWidget extends StatelessWidget {
  const _CategoryGridViewItemWidget({
    required this.isLoading,
    required this.gradientWithColors,
    required this.category,
  });

  final bool isLoading;
  final List<Color> gradientWithColors;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: isLoading,
      child: GestureDetector(
        onTap: () {
          //! Тут надо додумать
          if (isLoading) return;
          context.pushNamed(
            AppRouteNamed.categoryProduct,
            pathParameters: {
              AppRouteArgument.category: category ?? '',
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: gradientWithColors,
              ),
              boxShadow: AppShadows.itemShadow,
              borderRadius: BorderRadius.circular(8.r)),
          child: Center(child: Text(category ?? '')),
        ),
      ),
    );
  }
}
