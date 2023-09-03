import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/mixins/auth_methods_mixin.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/widgets/custom_widgets/email_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({
    super.key,
    required this.authRepository,
  });

  final AuthRepository authRepository;

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage>
    with AuthMethodsMixin {
  late final TextEditingController _email;
  final formKey = GlobalKey<FormState>();

  Future<void> _onResetPasswordButtonPressed() async {
    await resetPassword(
      formKey,
      context,
      widget.authRepository,
      _email.text.trim(),
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
    return Scaffold(
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
                  child: CustomElevatedButton(
                    onPressed: () => _onResetPasswordButtonPressed(),
                    backgroundColor: AppColors.mainColor,
                    child: const Text(
                      AppTexts.send,
                    ),
                  ),
                ),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
