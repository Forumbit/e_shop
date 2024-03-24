import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/constants/app_text_styles.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItemPriceWidget extends StatelessWidget {
  const ProductItemPriceWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final finalPrice =
        (product.price * (100 - product.discountPercentage) ~/ 100);
    return SizedBox(
      width: 100.w,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              children: [
                TextSpan(
                  text: '\$${product.price}',
                  style: AppTextStyles.text2.copyWith(
                    color: AppColors.typography2,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.black,
                  ),
                ),
                const TextSpan(text: '  '),
              ],
            ),
            TextSpan(
              text: '\$$finalPrice',
              style: AppTextStyles.price.copyWith(color: AppColors.additional3),
            ),
          ],
        ),
      ),
    );
  }
}
