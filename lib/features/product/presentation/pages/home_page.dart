import 'package:e_shop/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/product/presentation/widgets/about_us_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/category_list_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/popular_product_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isLoading = true;
  void _buttonPressed(isLoadingToggle) {
    isLoading = !isLoadingToggle;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _buttonPressed(isLoading),
        child: const Icon(Icons.hourglass_bottom),
      ),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 80.h,
        title: const SearchWidget(),
      ),
      body: Shimmer(
        child: ListView(
          physics: isLoading ? const NeverScrollableScrollPhysics() : null,
          children: [
            SizedBox(height: 9.h),
            CategoryListWidget(isLoading: isLoading),
            SizedBox(height: 17.h),
            PopularProductWidget(isLoading: isLoading),
            SizedBox(height: 10.h),
            AboutUsWidget(isLoading: isLoading),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    );
  }
}
