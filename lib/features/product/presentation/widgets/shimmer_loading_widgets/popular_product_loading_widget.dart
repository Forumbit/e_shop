import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/common/constants/app_text_styles.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/features/product/presentation/widgets/shimmer_loading_widgets/product_item_loading_widget.dart';
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
                style: AppTextStyles.subtitleStyle,
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRouteNamed.popularProduct);
                },
                child: Text(
                  AppTexts.showAll,
                  style: TextStyle(
                    color: const Color(0xFFB6B4B0),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
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
