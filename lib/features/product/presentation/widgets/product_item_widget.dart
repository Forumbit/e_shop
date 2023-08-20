import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isLoading) return;
        context.pushNamed(
          AppRouteNamed.productDetail,
          pathParameters: {AppRouteArgument.id: '1'},
        );
      },
      child: SizedBox(
        width: 156.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerLoading(
              isLoading: isLoading,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.defaultColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: AspectRatio(
                  aspectRatio: 157 / 176,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      AppImages.thumbnail,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            ShimmerLoading(
              isLoading: isLoading,
              child: (isLoading) ? _LoadItemWidget() : _ContentItemWidget(),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}

class _ContentItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const discountPercent = 12.96;
    final finalPrice = (33 * (100 - discountPercent) / 100).ceilToDouble();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '\$$finalPrice',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.lineThrough,
                color: const Color(0xFF4A4A4A),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              '\$33.00',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFB6B4B0),
              ),
            ),
            const Spacer(),
            Image.asset(
              AppImages.star,
              color: Colors.yellow,
            ),
            const SizedBox(width: 4),
            Text(
              '4.5',
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF4A4A4A),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          'Имя продукта',
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xFF696D84),
          ),
          maxLines: 1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _LoadItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
