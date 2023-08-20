import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductReviewWidget extends StatelessWidget {
  const ProductReviewWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ShimmerLoading(
        isLoading: isLoading,
        child: Container(
          width: double.infinity,
          height: 200.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.defaultColor,
          ),
          child: const Center(child: Text('Отзывов пока нет')),
        ),
      ),
    );
  }
}
