import 'package:e_shop/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/carousel_product_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/characters_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/description_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/floating_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/name_price_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/rating_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var isLoading = false;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black45,
        title: Text(
          'Самсунг',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.black,
      ),
      body: Shimmer(
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            CarouselProductWidget(isLoading: isLoading),
            SizedBox(height: 20.h),
            ProductNamePriceWidget(isLoading: isLoading),
            SizedBox(height: 4.h),
            ProductRatingWidget(isLoading: isLoading),
            SizedBox(height: 16.h),
            ProductDescriptionWidget(isLoading: isLoading),
            SizedBox(height: 16.h),
            ProductCharactersWidget(isLoading: isLoading),
            SizedBox(height: 20.h),
            ProductReviewWidget(isLoading: isLoading),
            SizedBox(height: 50.h),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: isLoading
          // ignore: dead_code
          ? null
          // ignore: dead_code
          : const ProductFloatingWidget(),
    );
  }
}