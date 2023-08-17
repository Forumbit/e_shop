import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.defaultColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.r),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 9.w),
                child: Image.asset(AppImages.search),
              ),
              hintText: 'Искать',
            ),
          ),
        ),
        SizedBox(width: 10.w),
        SizedBox(
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.filter),
            padding: const EdgeInsets.all(15),
            iconSize: 25.w,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                AppColors.defaultColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
