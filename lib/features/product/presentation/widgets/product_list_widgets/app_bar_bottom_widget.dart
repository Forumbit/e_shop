import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/features/product/domain/enum/product_list_enum.dart';
import 'package:e_shop/features/product/presentation/bloc/product_list/product_list_bloc.dart';
import 'package:e_shop/features/search/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AppBarBottomWidget extends StatelessWidget {
  const AppBarBottomWidget({
    super.key,
    this.categoryName,
    required this.controller,
    required this.productListEnum,
  });

  final TextEditingController controller;
  final ProductListEnum productListEnum;
  final String? categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: productListEnum == ProductListEnum.search
              ? SearchWidget(
                  controller: controller,
                  onSubmitted: (String query) =>
                      context.read<ProductListBloc>().add(
                            ProductListEvent.onSearchProducts(query),
                          ),
                )
              : SearchWidget(
                  controller: controller,
                  onSubmitted: (String query) => context.pushNamed(
                    AppRouteNamed.searchProduct,
                    pathParameters: {
                      AppRouteArgument.query: query,
                    },
                  ),
                ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Row(
            children: [
              BlocBuilder<ProductListBloc, ProductListState>(
                builder: (context, state) {
                  return RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${AppTexts.showing}  ',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFF999BA9),
                          ),
                        ),
                        TextSpan(
                          text: switch (productListEnum) {
                            ProductListEnum.popular => '"Popular"',
                            ProductListEnum.category => '"$categoryName"',
                            ProductListEnum.search => '"${controller.text}"',
                          },
                          // text: controller.text != ''
                          //     ? '"${controller.text}"'
                          //     : '"${AppTexts.popular}"',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2F2F2F),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const Spacer(),
              BlocBuilder<ProductListBloc, ProductListState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (productsList, isProductsEnded) {
                      return _TotalProductWidget(total: productsList.total);
                    },
                    orElse: () => const _TotalProductWidget(total: null),
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _TotalProductWidget extends StatelessWidget {
  const _TotalProductWidget({required this.total});

  final int? total;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${total ?? 0} ${AppTexts.results.toLowerCase()}',
      style: TextStyle(
        fontSize: 14.sp,
        color: const Color(0xFF999BA9),
      ),
    );
  }
}
