import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/features/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/widgets/shimmer/shimmer_container_widget.dart';
import 'package:e_shop/features/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailLoadingWidget extends StatelessWidget {
  const ProductDetailLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          ShimmerLoading(
            isLoading: true,
            child: SizedBox(
              height: 330.w,
              child: const AspectRatio(
                aspectRatio: 330 / 446,
                child: ColoredBox(
                  color: AppColors.defaultColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ShimmerLoading(
              isLoading: true,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerContainerWidget(width: 100.w, height: 25.h),
                    ShimmerContainerWidget(width: 100.w, height: 40.h),
                  ]),
            ),
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ShimmerLoading(
              isLoading: true,
              child: Row(children: [
                ShimmerContainerWidget(width: 80.w, height: 25.h),
                SizedBox(width: 10.w),
                ShimmerContainerWidget(width: 120.w, height: 25.h),
              ]),
            ),
          ),
          SizedBox(height: 16.h),
          ShimmerLoading(
            isLoading: true,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  ShimmerContainerWidget(width: double.infinity, height: 25.h),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(right: 25.w),
                    child: ShimmerContainerWidget(
                        width: double.infinity, height: 25.h),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(right: 40.w),
                    child: ShimmerContainerWidget(
                        width: double.infinity, height: 25.h),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: ShimmerLoading(
                    isLoading: true,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShimmerContainerWidget(width: 120.w, height: 25.h),
                          SizedBox(height: 4.h),
                          ShimmerContainerWidget(width: 80.w, height: 25.h),
                        ]),
                  ),
                ),
                Expanded(
                  child: ShimmerLoading(
                    isLoading: true,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShimmerContainerWidget(width: 120.w, height: 25.h),
                          SizedBox(height: 4.h),
                          ShimmerContainerWidget(width: 80.w, height: 25.h),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ShimmerLoading(
              isLoading: true,
              child: Container(
                width: double.infinity,
                height: 200.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.defaultColor,
                ),
                child: const Center(child: Text(' ')),
              ),
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
