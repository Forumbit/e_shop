import 'package:e_shop/common/constants/app_text_input_decoration.dart';
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
          return 'Email is not correct, try again!';
        } else {
          return null;
        }
      },
      decoration: AppTextInputDecoration.mainInputDecoration.copyWith(
        labelText: labelText,
      ),
    );
  }
}
