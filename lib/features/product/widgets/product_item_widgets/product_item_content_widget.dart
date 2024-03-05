import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/features/product/widgets/product_item_widgets/product_item_price_widget.dart';
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
              color: Colors.yellow,
            ),
            const SizedBox(width: 4),
            Text(
              '${product.rating}',
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF4A4A4A),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          product.title,
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xFF696D84),
          ),
          maxLines: 1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
