import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryListLoadingWidget extends StatelessWidget {
  const CategoryListLoadingWidget({
    super.key,
  });

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
                AppTexts.categories,
                style: TextStyle(
                  color: const Color(0xFF4A4A4A),
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              Text(
                AppTexts.showAll,
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
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 20.w),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return _CategoryItemLoadingWidget();
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

class _CategoryItemLoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: true,
      child: SizedBox(
        height: 64.h,
        width: 124.w,
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
          onPressed: () {},
          child: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
