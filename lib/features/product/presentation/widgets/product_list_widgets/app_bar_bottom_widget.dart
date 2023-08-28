import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/features/product/presentation/bloc/product_list/product_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarBottomWidget extends StatelessWidget {
  const AppBarBottomWidget({
    super.key,
    required this.category,
  });

  final String? category;

  @override
  Widget build(BuildContext context) {
    //! Search Widget
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
    //     child: SearchWidget(controllerText: controllerText),
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Row(
        children: [
          RichText(
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
                  text: category != null ? '"$category"' : '"${AppTexts.popular}"',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2F2F2F),
                  ),
                ),
              ],
            ),
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