import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/constants/app_images.dart';
import 'package:e_shop/src/core/common/constants/app_text_styles.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/src/features/product/widgets/product_item_widgets/product_item_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItemContentItemWidget extends StatelessWidget {
  const ProductItemContentItemWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ProductItemPriceWidget(product: product),
            const Spacer(),
            Image.asset(
              AppImages.star,
              color: AppColors.accent,
            ),
            const SizedBox(width: 4),
            Text(
              '${product.rating}',
              style:
                  AppTextStyles.rating.copyWith(color: AppColors.typography2),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          product.title,
          style:
              AppTextStyles.productName.copyWith(color: AppColors.typography4),
          maxLines: 1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
