import 'package:e_shop/common/widgets/shimmer/shimmer_container_widget.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCharactersWidget extends StatelessWidget {
  const ProductCharactersWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Expanded(
            child: ShimmerLoading(
              isLoading: isLoading,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: isLoading
                    ? [
                        ShimmerContainerWidget(width: 120.w, height: 25.h),
                        SizedBox(height: 4.h),
                        ShimmerContainerWidget(width: 80.w, height: 25.h),
                      ]
                    : [
                        Text(
                          'Бренд:',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFF2F2F2F),
                          ),
                        ),
                        Text(
                          'Категория:',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFF2F2F2F),
                          ),
                        ),
                      ],
              ),
            ),
          ),
          Expanded(
            child: ShimmerLoading(
              isLoading: isLoading,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: isLoading
                    ? [
                        ShimmerContainerWidget(width: 120.w, height: 25.h),
                        SizedBox(height: 4.h),
                        ShimmerContainerWidget(width: 80.w, height: 25.h),
                      ]
                    : [
                        Text(
                          'Apple',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2F2F2F),
                          ),
                        ),
                        Text(
                          'Смартфоны',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2F2F2F),
                          ),
                        ),
                      ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
