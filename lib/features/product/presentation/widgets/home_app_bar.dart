import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      title: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.defaultColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20, right: 9),
            child: Image.asset(AppImages.search),
          ),
          hintText: 'Искать',
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.filter),
            padding: const EdgeInsets.all(15),
            iconSize: 25,
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
