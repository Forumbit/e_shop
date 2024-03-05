import 'package:e_shop/core/common/constants/app_colors.dart';
import 'package:e_shop/core/common/constants/app_texts.dart';
import 'package:e_shop/features/cart/widgets/shimmer_widgets/cart_actions_button_loading.dart';
import 'package:e_shop/features/cart/widgets/shimmer_widgets/cart_content_loading_widget.dart';
import 'package:e_shop/core/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/core/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPageLoadingWidget extends StatelessWidget {
  const CartPageLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.cart),
        centerTitle: true,
      ),
      body: Shimmer(
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 120.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerLoading(
                      isLoading: true,
                      child: SizedBox(
                        width: 120.w,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: const ColoredBox(
                            color: AppColors.defaultColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.h),
                    const CartContentLoadingWidget(),
                    const Spacer(),
                    const CartAcionsButtonLoading(),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 14.h);
          },
        ),
      ),
    );
  }
}
