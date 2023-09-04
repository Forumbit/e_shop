import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_error_text.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_text_input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField(
      {super.key, required this.controller, required this.labelText});

  final TextEditingController controller;
  final String labelText;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  var isHiddenPassword = true;

  void _toggleHidePassword() {
    isHiddenPassword = !isHiddenPassword;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      controller: widget.controller,
      obscureText: isHiddenPassword,
      validator: (value) {
        if (value != null && value.length < 6) {
          return AppErrorText.passwordLengthLessThan;
        }
        return null;
      },
      decoration: AppTextInputDecoration.mainInputDecoration.copyWith(
        labelText: widget.labelText,
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          onPressed: _toggleHidePassword,
          icon: isHiddenPassword
              ? Image.asset(
                  AppImages.invisible,
                  height: 24.h,
                  width: 24.w,
                  color: Colors.grey,
                )
              : Image.asset(
                  AppImages.visible,
                  height: 24.h,
                  width: 24.w,
                  color: AppColors.mainColor,
                ),
        ),
      ),
    );
  }
}
