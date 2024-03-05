import 'package:e_shop/core/common/constants/app_colors.dart';
import 'package:e_shop/core/common/constants/app_shadows.dart';
import 'package:e_shop/core/common/constants/app_text_styles.dart';
import 'package:e_shop/core/common/constants/app_texts.dart';
import 'package:e_shop/core/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.aboutUs,
            style: AppTextStyles.subtitleStyle,
          ),
          SizedBox(height: 3.h),
          ShimmerLoading(
            isLoading: isLoading,
            child: AspectRatio(
              aspectRatio: 335 / 180,
              child: Container(
                decoration:
                    const BoxDecoration(boxShadow: AppShadows.itemShadow),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://media.istockphoto.com/id/1367899897/photo/group-of-people-meeting-with-technology-and-paperwork.webp?b=1&s=170667a&w=0&k=20&c=F6DIBS4MVeSEDfSOEX1UCt1fxQ3dr4iTC6NcOv5UnNg='),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        _BackgroundItemWidget(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 25.h,
                          ),
                          child: SizedBox(
                            width: 150.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppTexts.whoAreWe,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'E-shop is the largest marketplace in the world! Here you can buy whatever comes to mind...',
                                  style: TextStyle(fontSize: 12.sp),
                                  maxLines: 3,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5.h),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    AppTexts.moreInfo,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BackgroundItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 150.w,
      child: Transform(
        alignment: AlignmentDirectional.center,
        transform: Matrix4.skew(2, 2)..rotateZ(-math.pi / 2),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
              ],
              borderRadius: BorderRadius.circular(4.r)),
        ),
      ),
    );
  }
}
