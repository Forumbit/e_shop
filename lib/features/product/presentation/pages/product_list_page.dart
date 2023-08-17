import 'package:e_shop/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/product/presentation/widgets/product_list_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var isLoading = false;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        title: Text(
          'Продукты',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF2F2F2F),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: const SearchWidget(),
          ),
        ),
        scrolledUnderElevation: 0,
        centerTitle: true,
      ),
      body: Shimmer(
        child: ListView(
          // ignore: dead_code
          physics: isLoading ? const NeverScrollableScrollPhysics() : null,
          children: [
            SizedBox(width: 10.h),
            SizedBox(height: 20.h),
            ProductListWidget(isLoading: isLoading),
          ],
        ),
      ),
    );
  }
}