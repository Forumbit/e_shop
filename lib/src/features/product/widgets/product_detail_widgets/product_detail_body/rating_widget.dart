import 'package:e_shop/src/core/common/constants/app_images.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFDDDDDF)),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
              child: Row(
                children: [
                  Image.asset(AppImages.star),
                  Text(
                    product.rating.toString(),
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
            '125+ ${AppTexts.reviews.toLowerCase()}',
            style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xFF2F2F2F),
            ),
          ),
        ],
      ),
    );
  }
}
