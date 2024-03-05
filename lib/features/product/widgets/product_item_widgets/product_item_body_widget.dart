import 'package:e_shop/features/product/widgets/product_item_widgets/product_item_content_widget.dart';
import 'package:e_shop/features/product/widgets/product_item_widgets/product_item_image_widget.dart';
import 'package:e_shop/core/route/app_route_name.dart';
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
            ProductDetailImageWidget(product: product),
            SizedBox(height: 8.h),
            ProductItemContentItemWidget(product: product),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}
