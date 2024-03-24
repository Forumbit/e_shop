import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/core/common/constants/app_text_styles.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/src/features/product/widgets/product_item_widgets/product_item_body_widget.dart';
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
                AppTexts.popular,
                style: AppTextStyles.caption4
                    .copyWith(color: AppColors.typography2),
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRouteNamed.popularProduct);
                },
                child: Text(
                  AppTexts.showAll,
                  style: AppTextStyles.viewAll
                      .copyWith(color: AppColors.typography1),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 260.w,
          child: ListView.separated(
            padding: EdgeInsets.only(top: 12.h),
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
