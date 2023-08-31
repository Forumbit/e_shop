import 'dart:async';

import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({
    super.key,
    required this.authRepository,
  });

  final AuthRepository authRepository;

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;

  Future<void> _checkEmailVerification() async {
    try {
      isEmailVerified = await widget.authRepository.checkEmailVerification();
      if (isEmailVerified && mounted) {
        context.go(AppRouteUrl.loader);
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<void> _sendEmailVerification() async {
    try {
      await widget.authRepository.sendEmailVerification();
      setState(() {
        canResendEmail = false;
      });
      await Future.delayed(const Duration(seconds: 5));
      setState(() {
        canResendEmail = true;
      });
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<void> _deleteAccount() async {
    try {
      await widget.authRepository.deleteAccount();
      if (mounted) {
        context.go(AppRouteUrl.loader);
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  @override
  void initState() {
    super.initState();

    if (!isEmailVerified) {
      _sendEmailVerification();
    }

    timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        _checkEmailVerification();
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
              CustomElevatedButton(
                onPressed: canResendEmail ? _sendEmailVerification : null,
                backgroundColor: canResendEmail ? AppColors.mainColor : null,
                child: const Text(AppTexts.send),
              ),
              SizedBox(height: 20.h),
              TextButton(
                onPressed: _deleteAccount,
                child: const Text(
                  AppTexts.cancel,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
