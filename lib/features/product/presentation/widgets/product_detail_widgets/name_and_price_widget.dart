import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameAndPriceWidget extends StatelessWidget {
  const NameAndPriceWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2F2F2F),
                  ),
                ),
              ],
            ),
          ),
          Text(
            '\$${product.price}0',
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2F2F2F),
            ),
          ),
        ],
      ),
    );
  }
}
