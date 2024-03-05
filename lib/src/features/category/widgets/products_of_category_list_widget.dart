import 'package:e_shop/src/core/common/constants/app_gradients.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/core/common/constants/app_shadows.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/core/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.categories,
  });

  final List<String>? categories;

  @override
  Widget build(BuildContext context) {
    final isLoading = categories == null;
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
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRouteNamed.categoryList);
                },
                child: Text(
                  AppTexts.showAll,
                  style: TextStyle(
                    color: const Color(0xFFB6B4B0),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 7.h),
        SizedBox(
          height: 84.h,
          child: ListView.separated(
            physics: isLoading ? const NeverScrollableScrollPhysics() : null,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            scrollDirection: Axis.horizontal,
            itemCount: isLoading ? 10 : categories!.length,
            itemBuilder: (BuildContext context, int index) {
              final category = isLoading ? null : categories![index];
              return CategoryItemWidget(
                category: category,
                gradientWithColors: AppGradients.gradientsWithColors[index % 5],
              );
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
  final String? category;
  final List<Color> gradientWithColors;
  const CategoryItemWidget({
    super.key,
    required this.category,
    required this.gradientWithColors,
  });

  @override
  Widget build(BuildContext context) {
    final isLoading = category == null;
    return ShimmerLoading(
      isLoading: isLoading,
      child: Container(
        height: 64.h,
        width: 124.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: gradientWithColors,
          ),
          boxShadow: AppShadows.itemShadow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            overlayColor: MaterialStateProperty.all(Colors.grey),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
          onPressed: () {
            if (isLoading) return;
            context.pushNamed(
              AppRouteNamed.categoryProduct,
              pathParameters: {
                AppRouteArgument.category: category!,
              },
            );
          },
          child: Text(
            category ?? '',
            textAlign: TextAlign.center,
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
