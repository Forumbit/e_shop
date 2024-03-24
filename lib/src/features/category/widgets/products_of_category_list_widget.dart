import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/constants/app_text_styles.dart';
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
              Text(AppTexts.categories,
                  style: AppTextStyles.caption4
                      .copyWith(color: AppColors.typography2)),
              GestureDetector(
                onTap: () => context.pushNamed(AppRouteNamed.categoryList),
                child: Text(AppTexts.showAll,
                    style: AppTextStyles.viewAll
                        .copyWith(color: AppColors.typography1)),
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
                backgroundColor: AppColors
                    .categoryColors[index % AppColors.categoryColors.length],
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
  final Color backgroundColor;
  const CategoryItemWidget({
    super.key,
    required this.category,
    required this.backgroundColor,
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
          color: backgroundColor,
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
            style: AppTextStyles.productName.copyWith(
              color: AppColors.main,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
