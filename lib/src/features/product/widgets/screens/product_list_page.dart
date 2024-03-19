import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/core/common/enum/product_list_enum.dart';
import 'package:e_shop/src/features/product/widgets/product_list_widgets/app_bar_bottom_widget.dart';
import 'package:e_shop/src/features/product/widgets/product_list_widgets/product_list_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({
    super.key,
    this.parameter,
    required this.productListEnum,
  });

  final String? parameter;
  final ProductListEnum productListEnum;

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    if (widget.productListEnum == ProductListEnum.category) {
      _controller = TextEditingController(text: '');
    } else {
      _controller = TextEditingController(text: widget.parameter);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        title: Text(
          AppTexts.products,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF2F2F2F),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.h),
          child: AppBarBottomWidget(
            categoryName: widget.productListEnum == ProductListEnum.category
                ? widget.parameter
                : null,
            controller: _controller,
            productListEnum: widget.productListEnum,
          ),
        ),
        scrolledUnderElevation: 0,
        centerTitle: true,
      ),
      body: ProductListWidget(
        controller: _controller,
        productListEnum: widget.productListEnum,
      ),
    );
  }
}
