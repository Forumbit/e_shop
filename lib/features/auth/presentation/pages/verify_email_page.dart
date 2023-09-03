import 'dart:async';

import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/presentation/bloc/verify_email/verify_email_bloc.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/widgets/custom_widgets/custom_elevated_button.dart';
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
        context.read<VerifyEmailBloc>().add(
              const VerifyEmailEvent.onCheckEmailVerification(),
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

  void _onPressedResendEmail() {
    if (!canResendEmail) return;
    context.read<VerifyEmailBloc>().add(
          const VerifyEmailEvent.onSendEmailVerification(),
        );
  }

  void _onPressedCancelButton() {
    timer?.cancel();
    context.read<VerifyEmailBloc>().add(
          const VerifyEmailEvent.onDeleteAccount(),
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
    return BlocProvider<VerifyEmailBloc>(
      create: (_) => VerifyEmailBloc(
        diContainer.getAuthRepository(),
      )..add(const VerifyEmailEvent.started()),
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
                BlocListener<VerifyEmailBloc, VerifyEmailState>(
                  listener: (context, state) => state.when(
                    initial: () => _onInitial(context),
                    verified: () => context.go(AppRouteUrl.loader),
                    resended: () async => await _onResended(),
                  ),
                  child: BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
                    builder: (context, state) {
                      return CustomElevatedButton(
                        onPressed: _onPressedResendEmail,
                        backgroundColor:
                            canResendEmail ? AppColors.mainColor : null,
                        child: const Text(AppTexts.send),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                TextButton(
                  onPressed: _onPressedCancelButton,
                  child: const Text(
                    AppTexts.cancel,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
