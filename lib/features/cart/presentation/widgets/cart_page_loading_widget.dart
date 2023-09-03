import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/features/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/widgets/shimmer/shimmer_container_widget.dart';
import 'package:e_shop/features/widgets/shimmer/shimmer_loading.dart';
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4.h),
                        ShimmerLoading(
                          isLoading: true,
                          child: ShimmerContainerWidget(
                            width: 70.w,
                            height: 20.h,
                          ),
                        ),
                        const Spacer(),
                        ShimmerLoading(
                          isLoading: true,
                          child: ShimmerContainerWidget(
                            width: 120.w,
                            height: 20.h,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        ShimmerLoading(
                          isLoading: true,
                          child: ShimmerContainerWidget(
                            width: 100.w,
                            height: 20.h,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        ShimmerLoading(
                          isLoading: true,
                          child: ShimmerContainerWidget(
                            width: 80.w,
                            height: 20.h,
                          ),
                        ),
                        SizedBox(height: 8.h),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ShimmerLoading(
                          isLoading: true,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.clear),
                          ),
                        ),
                        ShimmerLoading(
                          isLoading: true,
                          child: IconButton(
                            highlightColor: AppColors.defaultColor,
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                          ),
                        ),
                      ],
                    ),
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