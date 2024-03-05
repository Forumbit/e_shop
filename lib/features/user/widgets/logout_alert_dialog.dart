import 'package:e_shop/core/common/constants/app_colors.dart';
import 'package:e_shop/core/common/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogoutAlertDialog extends StatelessWidget {
  const LogoutAlertDialog({
    super.key,
    required this.onSubmitted,
  });

  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure?'),
      content: const Text('Are you sure to logout?'),
      actions: [
        CustomElevatedButton(
          backgroundColor: AppColors.mainColor,
          onPressed: onSubmitted,
          child: const Text('Yes'),
        ),
        CustomElevatedButton(
          backgroundColor: Colors.grey,
          onPressed: () => context.pop(),
          child: Text(
            'No',
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ),
      ],
    );
  }
}
