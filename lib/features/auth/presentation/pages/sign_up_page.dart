import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/common/utils/snack_bar_message.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:e_shop/features/auth/presentation/widgets/auth_divider.dart';
import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/widgets/custom_widgets/email_text_field.dart';
import 'package:e_shop/features/auth/presentation/widgets/gmail_button.dart';
import 'package:e_shop/widgets/custom_widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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

    context.read<AuthBloc>().add(
          AuthEvent.onSignUp(
            _email.text.trim(),
            _password.text.trim(),
            _confirmPassword.text.trim(),
          ),
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
    final diContainer = ProviderValue.of<DIContainer>(context);
    return BlocProvider(
      create: (context) => AuthBloc(
        diContainer.getAuthRepository(),
      ),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) => state.maybeWhen(
          success: () => context.go(AppRouteUrl.loader),
          message: (
            String message,
            bool error,
          ) =>
              CustomSnackBar.showSnackBar(
            context,
            message,
            error,
          ),
          orElse: () => Never,
        ),
        child: Scaffold(
          appBar: AppBar(scrolledUnderElevation: 0),
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
                            )),
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
      ),
    );
  }
}
