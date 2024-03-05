import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/constants/app_images.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/core/common/utils/provider/provider_value.dart';
import 'package:e_shop/src/core/common/utils/snack_bar_message.dart';
import 'package:e_shop/src/di/di_container.dart';
import 'package:e_shop/src/features/auth/bloc/auth/auth_bloc.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/core/common/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/src/core/common/widgets/custom_widgets/email_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late final TextEditingController _email;
  final formKey = GlobalKey<FormState>();

  Future<void> _onResetPasswordButtonPressed(BuildContext context) async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    context.read<AuthBloc>().add(
          AuthEvent.onResetPassword(
            _email.text.trim(),
          ),
        );
  }

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
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
          message: (String message, bool error) => CustomSnackBar.showSnackBar(
            context,
            message,
            error,
          ),
          success: () => context.go(AppRouteUrl.loader),
          orElse: () => Never,
        ),
        child: Scaffold(
          appBar: AppBar(scrolledUnderElevation: 0),
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      AppImages.resetPassword,
                      height: 200.h,
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      AppTexts.resetPassword,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Form(
                      key: formKey,
                      child: EmailTextField(
                        controller: _email,
                        labelText: AppTexts.email,
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
                                  onPressed: () =>
                                      _onResetPasswordButtonPressed(context),
                                  backgroundColor: AppColors.mainColor,
                                  child: const Text(
                                    AppTexts.send,
                                  ),
                                )),
                      ),
                    ),
                    SizedBox(height: 100.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
