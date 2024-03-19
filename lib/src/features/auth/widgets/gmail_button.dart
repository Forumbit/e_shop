import 'package:e_shop/src/core/common/constants/app_images.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/auth/bloc/auth/auth_bloc.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/core/common/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/src/features/auth/widgets/auth_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GmailButton extends StatelessWidget {
  const GmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.maybeWhen(
        success: () => context.go(AppRouteUrl.loader),
        orElse: () => Never,
      ),
      child: CustomElevatedButton(
        backgroundColor: Colors.black,
        onPressed: () => AuthScope.of(context).onLoginWithGmailButtonPressed(),
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
              AppTexts.gmail,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
