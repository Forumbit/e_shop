import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GmailButton extends StatelessWidget {
  const GmailButton({
    super.key,
    required this.authRepository,
  });

  final AuthRepository authRepository;

  Future<void> _onLoginWithGmailButtonPressed(
    BuildContext context,
    AuthRepository authRepository,
  ) async {
    await authRepository.loginWithGmail();
    if (context.mounted) {
      context.go(AppRouteUrl.loader);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      backgroundColor: Colors.black,
      onPressed: () => _onLoginWithGmailButtonPressed(context, authRepository),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppImages.gmail,
            width: 24.w,
            height: 24.h,
          ),
          SizedBox(width: 10.h),
          const Text(
            'Gmail',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
