import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
        SizedBox(width: 10.w),
        const Text(AppTexts.or),
        SizedBox(width: 10.w),
        const Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
