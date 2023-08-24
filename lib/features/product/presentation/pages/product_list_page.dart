import 'package:e_shop/features/product/presentation/widgets/product_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({
    super.key,
    this.controllerText,
    required this.category,
  });

  final String? controllerText;
  final String category;

  @override
  Widget build(BuildContext context) {
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
          preferredSize: Size.fromHeight(16.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Категория ',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFF999BA9),
                        ),
                      ),
                      TextSpan(
                        text: '"$category"',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF2F2F2F),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  '26 результатов',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF999BA9),
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(60.h),
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        //     child: SearchWidget(controllerText: controllerText),
        //   ),
        // ),
        scrolledUnderElevation: 0,
        centerTitle: true,
      ),
      body: ProductListWidget(category: category),
    );
  }
}
