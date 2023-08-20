import 'package:e_shop/common/widgets/shimmer/shimmer_container_widget.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: isLoading,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: isLoading
            ? Column(
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
              )
            : Text(
                'Description',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF2F2F2F),
                ),
              ),
      ),
    );
  }
}
