import 'package:e_shop/features/product/presentation/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                      text: '"Смартфоны"',
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
        SizedBox(height: 16.h),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          itemCount: 10,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 157 / 250,
            crossAxisSpacing: 20.w,
          ),
          itemBuilder: (BuildContext context, int index) =>
              ProductItemWidget(isLoading: isLoading),
        )
      ],
    );
  }
}
