import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/mixins/auth_methods_mixin.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/widgets/custom_widgets/email_text_field.dart';
import 'package:e_shop/widgets/custom_widgets/gmail_button.dart';
import 'package:e_shop/widgets/custom_widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AuthMethodsMixin {
  late final TextEditingController _email;
  late final TextEditingController _password;
  final formKey = GlobalKey<FormState>();
  var isLoading = false;

  Future<void> _onLoginButtonPressed(DIContainer diContainer) async {
    isLoading = true;
    setState(() {});
    await login(
      formKey,
      context,
      diContainer.getAuthRepository(),
      _email.text.trim(),
      _password.text.trim(),
    );
    isLoading = false;
    setState(() {});
  }

  void _onForgotPasswordButtonPressed() {
    context.push(AppRouteUrl.resetPassword);
  }

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 100.h),
              Image.asset(
                AppImages.login,
                height: 200.h,
              ),
              SizedBox(height: 20.h),
              Text(
                AppTexts.login,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    EmailTextField(
                      controller: _email,
                      labelText: AppTexts.email,
                    ),
                    SizedBox(height: 20.h),
                    PasswordTextField(
                      controller: _password,
                      labelText: AppTexts.password,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  const Text(
                    '${AppTexts.forgotPassword}?   ',
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () => _onForgotPasswordButtonPressed(),
                    child: const Text(
                      AppTexts.clickHere,
                      style: TextStyle(color: Colors.orange),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40.h),
              SizedBox(
                width: double.infinity,
                height: 54.h,
                child: CustomElevatedButton(
                  onPressed: () => _onLoginButtonPressed(diContainer),
                  backgroundColor: AppColors.mainColor,
                  child: isLoading
                      ? const CircularProgressIndicator(color: Colors.black)
                      : const Text(AppTexts.login),
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  const Text('or'),
                  SizedBox(width: 10.w),
                  const Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: double.infinity,
                height: 54.h,
                child: GmailButton(
                  authRepository: diContainer.getAuthRepository(),
                ),
              ),
              SizedBox(height: 40.h),
              const Text('${AppTexts.dontHaveAccount}?'),
              SizedBox(height: 10.h),
              SizedBox(
                width: double.infinity,
                height: 54.h,
                child: CustomElevatedButton(
                  backgroundColor: Colors.black,
                  onPressed: () => context.push(AppRouteUrl.signUp),
                  child: const Text(
                    AppTexts.signUp,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
