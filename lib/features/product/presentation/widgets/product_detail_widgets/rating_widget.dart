import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_container_widget.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductRatingWidget extends StatelessWidget {
  const ProductRatingWidget({
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
        child: Row(
          children: isLoading
              ? [
                  ShimmerContainerWidget(width: 80.w, height: 25.h),
                  SizedBox(width: 10.w),
                  ShimmerContainerWidget(width: 120.w, height: 25.h),
                ]
              : [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFDDDDDF)),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                      child: Row(
                        children: [
                          Image.asset(AppImages.star),
                          Text(
                            '4.8',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: const Color(0xFF2F2F2F),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    '125+ отзывов',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xFF2F2F2F),
                    ),
                  ),
                ],
        ),
      ),
    );
  }
}
