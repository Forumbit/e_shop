import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/utils/snack_bar_message.dart';
import 'package:e_shop/features/auth/bloc/auth/auth_bloc.dart';
import 'package:e_shop/features/auth/widgets/auth_divider.dart';
import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/common/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/features/common/widgets/custom_widgets/email_text_field.dart';
import 'package:e_shop/features/auth/widgets/gmail_button.dart';
import 'package:e_shop/features/common/widgets/custom_widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  final formKey = GlobalKey<FormState>();

  Future<void> _onLoginButtonPressed(BuildContext context) async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    context.read<AuthBloc>().add(
          AuthEvent.onLogin(
            _email.text.trim(),
            _password.text.trim(),
          ),
        );
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
    return BlocProvider(
      create: (_) => AuthBloc(
        diContainer.getAuthRepository(),
      ),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) => state.maybeWhen(
            orElse: () => Never,
            message: (message, error) => CustomSnackBar.showSnackBar(
                  context,
                  message,
                  error,
                ),
            success: () => context.go(AppRouteUrl.loader)),
        child: Scaffold(
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
                    child: BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) => state.maybeWhen(
                        loading: () => CustomElevatedButton(
                          onPressed: () {},
                          backgroundColor: AppColors.mainColor,
                          child: const CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        ),
                        orElse: () => CustomElevatedButton(
                          onPressed: () => _onLoginButtonPressed(context),
                          backgroundColor: AppColors.mainColor,
                          child: const Text(AppTexts.login),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const AuthDivider(),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: double.infinity,
                    height: 54.h,
                    child: const GmailButton(),
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
        ),
      ),
    );
  }
}
