import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/snack_bar_message.dart';
import 'package:e_shop/features/common/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({
    super.key,
    required this.total,
  });

  final int? total;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10.h),
            Text(
              total != null
                  ? '${AppTexts.total}: \$$total'
                  : '${AppTexts.total}: ???',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 54.h,
              width: double.infinity,
              child: CustomElevatedButton(
                backgroundColor: AppColors.mainColor,
                onPressed: () => CustomSnackBar.showSnackBar(
                  context,
                  AppTexts.translationWasSuccess,
                  false,
                ),
                child: const Text(
                  AppTexts.checkout,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
