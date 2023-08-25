import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          AppRouteNamed.productDetail,
          pathParameters: {AppRouteArgument.id: product.id.toString()},
        );
      },
      child: SizedBox(
        width: 156.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.defaultColor,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                  )
                ],
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
            ),
            SizedBox(height: 8.h),
            _ContentItemWidget(product: product),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}

class _ContentItemWidget extends StatelessWidget {
  const _ContentItemWidget({required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final finalPrice =
        (product.price * (100 - product.discountPercentage) ~/ 100);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
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
            ),
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
