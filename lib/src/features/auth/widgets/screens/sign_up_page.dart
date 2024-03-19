import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/constants/app_images.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/auth/bloc/auth/auth_bloc.dart';
import 'package:e_shop/src/features/auth/widgets/auth_divider.dart';
import 'package:e_shop/src/core/common/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/src/core/common/widgets/custom_widgets/email_text_field.dart';
import 'package:e_shop/src/features/auth/widgets/auth_scope.dart';
import 'package:e_shop/src/features/auth/widgets/gmail_button.dart';
import 'package:e_shop/src/core/common/widgets/custom_widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmPassword;

  var isLoading = false;
  final formKey = GlobalKey<FormState>();

  Future<void> _onSignUpButtonPressed(BuildContext context) async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    AuthScope.of(context).onSignUpButtonPressed(
      _email.text.trim(),
      _password.text.trim(),
      _confirmPassword.text.trim(),
    );
  }

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20.h),
                Image.asset(
                  AppImages.signUp,
                  height: 200.h,
                ),
                SizedBox(height: 30.h),
                Text(
                  AppTexts.signUp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 30.h),
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
                      SizedBox(height: 20.h),
                      PasswordTextField(
                        controller: _confirmPassword,
                        labelText: AppTexts.confirmPassword,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
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
                        onPressed: () => _onSignUpButtonPressed(context),
                        backgroundColor: AppColors.mainColor,
                        child: const Text(AppTexts.signUp),
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
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
