import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharactersWidget extends StatelessWidget {
  const CharactersWidget({
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brand:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF2F2F2F),
                  ),
                ),
                Text(
                  'Category:',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF2F2F2F),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.brand,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2F2F2F),
                  ),
                ),
                Text(
                  product.category,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2F2F2F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
