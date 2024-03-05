import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/bloc/auth/auth_bloc.dart';
import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/common/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GmailButton extends StatelessWidget {
  const GmailButton({super.key});

  Future<void> _onLoginWithGmailButtonPressed(BuildContext context) async {
    context.read<AuthBloc>().add(const AuthEvent.onLoginWithGmail());
  }

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context);
    return BlocProvider(
      create: (context) => AuthBloc(
        diContainer.getAuthRepository(),
      ),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) => state.maybeWhen(
          success: () => context.go(AppRouteUrl.loader),
          orElse: () => Never,
        ),
        child: CustomElevatedButton(
          backgroundColor: Colors.black,
          onPressed: () => _onLoginWithGmailButtonPressed(context),
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
      ),
    );
  }
}
