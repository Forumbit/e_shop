import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/constants/app_images.dart';
import 'package:e_shop/src/core/common/constants/app_text_styles.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    super.key,
    this.controller,
    required this.onSubmitted,
  });

  final TextEditingController? controller;
  final void Function(String) onSubmitted;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: widget.controller,
            onSubmitted: (String text) {
              if (text == '') return;
              widget.onSubmitted(text);
            },
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.main,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.r),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 9.w),
                  child: Image.asset(AppImages.search),
                ),
                hintText: AppTexts.searchProducts,
                hintStyle: AppTextStyles.productName
                    .copyWith(color: AppColors.typography1)),
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
                AppColors.main,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
