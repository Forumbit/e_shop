import 'package:e_shop/common/widgets/shimmer/shimmer_container_widget.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductNamePriceWidget extends StatelessWidget {
  const ProductNamePriceWidget({
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: isLoading
              ? [
                  ShimmerContainerWidget(width: 100.w, height: 25.h),
                  ShimmerContainerWidget(width: 100.w, height: 40.h),
                ]
              : [
                  Text(
                    'Самсунг',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2F2F2F)),
                  ),
                  Text(
                    '\$22.00',
                    style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2F2F2F)),
                  ),
                ],
        ),
      ),
    );
  }
}
