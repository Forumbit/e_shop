import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/constants/app_shadows.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailImageWidget extends StatelessWidget {
  const ProductDetailImageWidget({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.defaultColor,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: AppShadows.itemShadow,
      ),
      child: AspectRatio(
        aspectRatio: 157 / 176,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.network(
            product.thumbnail,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
