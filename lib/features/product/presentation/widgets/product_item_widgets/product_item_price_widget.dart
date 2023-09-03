import 'package:e_shop/features/product/domain/entities/product_entity.dart';
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
      width: 95.w,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              children: [
                TextSpan(
                  text: '\$${product.price}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.lineThrough,
                    color: const Color(0xFF4A4A4A),
                  ),
                ),
                const TextSpan(text: '  '),
              ],
            ),
            TextSpan(
              text: '\$$finalPrice',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFB6B4B0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
