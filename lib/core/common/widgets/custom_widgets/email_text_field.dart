import 'package:e_shop/core/common/constants/app_error_text.dart';
import 'package:e_shop/core/common/constants/app_text_input_decoration.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required this.controller,
    required this.labelText,
  });

  final TextEditingController controller;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      controller: controller,
      validator: (value) {
        if (value != null && !EmailValidator.validate(value)) {
          return AppErrorText.emailIsNotCorrect;
        }
        return null;
      },
      decoration: AppTextInputDecoration.mainInputDecoration.copyWith(
        labelText: labelText,
      ),
    );
  }
}
