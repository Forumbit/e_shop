import 'package:e_shop/common/constants/app_text_styles.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            'О нас',
            style: AppTextStyles.subtitleStyle,
          ),
          SizedBox(height: 3.h),
          ShimmerLoading(
            isLoading: isLoading,
            child: SizedBox(
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 335 / 180,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://www.excaliberpc.com/images/resources/742728/1a16680742cc447ba4383b9044bfd8ac.png'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 30.h,
                      left: 22.w,
                      right: 150.w,
                      bottom: 30.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Кто мы такие?',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...  ',
                          style:
                              TextStyle(fontSize: 12.sp),
                          maxLines: 3,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5.h),
                        GestureDetector(
                          onTap: () => print(123),
                          child: Text(
                            'Узнать больше',
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
