import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/constants/app_text_styles.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/features/product/presentation/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PopularProductWidget extends StatelessWidget {
  const PopularProductWidget({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: AppTextStyles.subtitleStyle,
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRouteNamed.popularProduct);
                },
                child: Text(
                  'show all',
                  style: TextStyle(
                    color: const Color(0xFFB6B4B0),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 7.h),
        SizedBox(
          height: 260.w,
          child: ListView.separated(
            padding: EdgeInsets.only(top: 8.h),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            separatorBuilder: (BuildContext context, int index) {
              final product = products[index];
              return ProductItemWidget(product: product);
            },
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(width: 20.w);
            },
          ),
        ),
      ],
    );
  }
}
