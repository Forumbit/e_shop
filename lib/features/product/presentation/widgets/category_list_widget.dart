import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Категории',
                style: TextStyle(
                  color: const Color(0xFF4A4A4A),
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
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
          height: 64.h,
          child: ListView.separated(
            physics: isLoading ? const NeverScrollableScrollPhysics() : null,
            padding: EdgeInsets.only(left: 20.w),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItemWidget(isLoading: isLoading);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 11.w);
            },
          ),
        ),
      ],
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  final bool isLoading;
  const CategoryItemWidget({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: isLoading,
      child: SizedBox(
        height: 64.h,
        width: 104.w,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.defaultColor),
            overlayColor: MaterialStateProperty.all(Colors.grey),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
          onPressed: () {
            if (isLoading) return;
            context.push('/product-list');
          },
          child: Text(
            'Телефон',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
