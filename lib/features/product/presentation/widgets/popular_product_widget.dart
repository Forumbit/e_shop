import 'package:e_shop/common/constants/app_text_styles.dart';
import 'package:e_shop/features/product/presentation/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularProductWidget extends StatelessWidget {
  const PopularProductWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

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
                'Популярные',
                style: AppTextStyles.subtitleStyle,
              ),
              Text(
                'Посмотреть все',
                style: TextStyle(
                  color: const Color(0xFFB6B4B0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 7.h),
        SizedBox(
          height: 250.w,
          child: ListView.separated(
            physics: isLoading ? const NeverScrollableScrollPhysics() : null,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return ProductItemWidget(isLoading: isLoading);
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