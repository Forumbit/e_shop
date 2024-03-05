import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/cart/domain/entities/cart_product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProductContentWidget extends StatelessWidget {
  const CartProductContentWidget({
    super.key,
    required this.product,
  });

  final CartProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5.h),
        SizedBox(
          width: 80.w,
          child: Text(
            product.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
            maxLines: 1,
          ),
        ),
        const Spacer(),
        Text('\$${product.price.toString()}'),
        Text('${AppTexts.quantity}: ${product.quantity.toString()}'),
        Text('${AppTexts.total}: \$${product.total}'),
        SizedBox(height: 8.h),
      ],
    );
  }
}
