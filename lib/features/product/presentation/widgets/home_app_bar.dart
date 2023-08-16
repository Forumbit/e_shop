import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight + 20);

  @override
  final Size preferredSize;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 120.h,
      scrolledUnderElevation: 0,
      title: TextField(
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
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
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
