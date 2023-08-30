import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/mixins/auth_methods_mixin.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/features/widgets/custom_widgets/email_text_field.dart';
import 'package:e_shop/features/widgets/custom_widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with AuthMethodsMixin {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _repeatPassword;

  var isLoading = false;
  final formKey = GlobalKey<FormState>();

  Future<void> _onSignUpButtonPressed(AuthRepository authRepository) async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await signUp(
      formKey,
      context,
      authRepository,
      _email.text.trim(),
      _password.text.trim(),
      _repeatPassword.text.trim(),
    );
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
    _repeatPassword = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _repeatPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context).value;
    return Scaffold(
      appBar: AppBar(scrolledUnderElevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 100.h),
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
                      controller: _repeatPassword,
                      labelText: AppTexts.repeatPassword,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                width: double.infinity,
                height: 54.h,
                child: CustomElevatedButton(
                  onPressed: () => _onSignUpButtonPressed(
                    diContainer.getAuthRepository(),
                  ),
                  backgroundColor: AppColors.mainColor,
                  child: isLoading
                      ? const CircularProgressIndicator(color: Colors.black)
                      : const Text(AppTexts.signUp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
