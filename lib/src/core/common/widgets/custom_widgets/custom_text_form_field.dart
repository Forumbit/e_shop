import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required TextEditingController controller,
    required this.labelText,
    this.validator,
  }) : _email = controller;

  final String? Function(String?)? validator;
  final TextEditingController _email;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      textInputAction: TextInputAction.next,
      controller: _email,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(fontSize: 14.sp),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: AppColors.mainColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}
