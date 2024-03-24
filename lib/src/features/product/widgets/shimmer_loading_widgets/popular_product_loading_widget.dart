import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/core/common/constants/app_text_styles.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/product/widgets/shimmer_loading_widgets/product_item_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PopularProductLoadingWidget extends StatelessWidget {
  const PopularProductLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppTexts.popular,
                style: AppTextStyles.caption4
                    .copyWith(color: AppColors.typography2),
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRouteNamed.popularProduct);
                },
                child: Text(
                  AppTexts.showAll,
                  style: AppTextStyles.viewAll
                      .copyWith(color: AppColors.typography1),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 7.h),
        SizedBox(
          height: 250.w,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return const ProductItemLoadingWidget();
            },
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(width: 20.w);
            },
          ),
        ),
      ],
    );
  }
}
