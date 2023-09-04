import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/features/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItemLoadingWidget extends StatelessWidget {
  const ProductItemLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerLoading(
            isLoading: true,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.defaultColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: AspectRatio(
                aspectRatio: 157 / 176,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: null,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          ShimmerLoading(
            isLoading: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.defaultColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  width: double.infinity,
                  height: 24.h,
                ),
                SizedBox(height: 4.h),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.defaultColor,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  width: 100.w,
                  height: 24.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
