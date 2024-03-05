import 'package:e_shop/core/common/constants/app_colors.dart';
import 'package:e_shop/core/common/constants/app_texts.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/features/product/widgets/product_detail_widgets/product_detail_body/carousel_product_widget.dart';
import 'package:e_shop/features/product/widgets/product_detail_widgets/product_detail_body/characters_widget.dart';
import 'package:e_shop/features/product/widgets/product_detail_widgets/product_detail_body/name_and_price_widget.dart';
import 'package:e_shop/features/product/widgets/product_detail_widgets/product_detail_body/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0),
      children: [
        CarouselProductWidget(product: product),
        SizedBox(height: 20.h),
        NameAndPriceWidget(product: product),
        SizedBox(height: 4.h),
        RatingWidget(product: product),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            product.description,
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF2F2F2F),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        CharactersWidget(product: product),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            width: double.infinity,
            height: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.defaultColor,
            ),
            child: const Center(child: Text(AppTexts.reviewsNotYet)),
          ),
        ),
        SizedBox(height: 50.h),
      ],
    );
  }
}
