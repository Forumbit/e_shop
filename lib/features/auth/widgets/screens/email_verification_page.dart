import 'dart:async';

import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/bloc/email_verification/email_verification_bloc.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/features/common/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool canResendEmail = true;
  late final Timer? timer;

  void _onInitial(BuildContext context) {
    timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        context.read<EmailVerificationBloc>().add(
              const EmailVerificationEvent.onCheckEmailVerification(),
            );
      },
    );
  }

  Future<void> _onResended() async {
    setState(() {
      canResendEmail = false;
    });
    await Future.delayed(const Duration(seconds: 15));
    setState(() {
      canResendEmail = true;
    });
  }

  void _onPressedResendEmail(BuildContext context) {
    if (!canResendEmail) return;
    context.read<EmailVerificationBloc>().add(
          const EmailVerificationEvent.onSendEmailVerification(),
        );
  }

  void _onPressedCancelButton(BuildContext context) {
    timer?.cancel();
    context.read<EmailVerificationBloc>().add(
          const EmailVerificationEvent.onDeleteAccount(),
        );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context);
    return BlocProvider<EmailVerificationBloc>(
      create: (_) => EmailVerificationBloc(
        diContainer.getAuthRepository(),
      )..add(const EmailVerificationEvent.started()),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppImages.verification,
                  height: 200.h,
                ),
                SizedBox(height: 30.h),
                Text(
                  AppTexts.checkMailTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                const Text(
                  AppTexts.checkMailDescription,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.h),
                BlocListener<EmailVerificationBloc, EmailVerificationState>(
                  listener: (context, state) => state.when(
                    initial: () => _onInitial(context),
                    verified: () => context.go(AppRouteUrl.loader),
                    resended: () async => await _onResended(),
                    successfull: () => context.go(AppRouteUrl.loader),
                  ),
                  child: BlocBuilder<EmailVerificationBloc,
                      EmailVerificationState>(
                    builder: (context, state) {
                      return CustomElevatedButton(
                        onPressed: () => _onPressedResendEmail(context),
                        backgroundColor:
                            canResendEmail ? AppColors.mainColor : null,
                        child: const Text(AppTexts.send),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
                  builder: (context, state) {
                    return TextButton(
                      onPressed: () => _onPressedCancelButton(context),
                      child: const Text(
                        AppTexts.cancel,
                        style: TextStyle(color: Colors.grey),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
