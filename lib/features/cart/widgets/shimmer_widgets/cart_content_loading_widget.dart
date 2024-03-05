import 'package:e_shop/core/common/widgets/shimmer/shimmer_container_widget.dart';
import 'package:e_shop/core/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartContentLoadingWidget extends StatelessWidget {
  const CartContentLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
