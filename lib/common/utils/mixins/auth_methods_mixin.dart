import 'package:e_shop/common/constants/app_error_text.dart';
import 'package:e_shop/route/app_route_name.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/error/exception.dart';
import 'package:e_shop/common/utils/snack_bar_message.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

mixin AuthMethodsMixin {

  Future<void> login(
    GlobalKey<FormState> formKey,
    BuildContext context,
    AuthRepository authRepository,
    String email,
    String password,
  ) async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    try {
      await authRepository.login(email, password);
      if (context.mounted) {
        context.go(AppRouteUrl.loader);
      }
    } on WrongEmailOrPasswordException {
      SnackBarMessenger.showSnackBar(
        context,
        AppErrorText.wrongEmailOrPassword,
        true,
      );
    } catch (e) {
      print('UI: $e');
      SnackBarMessenger.showSnackBar(
        context,
        AppErrorText.commonError,
        true,
      );
    }
  }

  Future<void> resetPassword(
    GlobalKey<FormState> formKey,
    BuildContext context,
    AuthRepository authRepository,
    String email,
  ) async {
    try {
      final isValid = formKey.currentState!.validate();
      if (!isValid) return;
      await authRepository.resetPassword(email);
      if (context.mounted) {
        SnackBarMessenger.showSnackBar(
          context,
          AppTexts.linkWasSend,
          false,
        );
        context.go(AppRouteUrl.loader);
      }
    } on WrongEmailOrPasswordException {
      SnackBarMessenger.showSnackBar(
        context,
        AppErrorText.userNotFound,
        true,
      );
    } catch (e) {
      print(e);
      SnackBarMessenger.showSnackBar(
        context,
        AppErrorText.commonError,
        true,
      );
    }
  }

  Future<void> signUp(
    GlobalKey<FormState> formKey,
    BuildContext context,
    AuthRepository authRepository,
    String email,
    String password,
    String repeatPassword,
  ) async {
    final isValid = formKey.currentState!.validate();

    if (!isValid) return;
    if (password != repeatPassword) {
      SnackBarMessenger.showSnackBar(
        context,
        AppErrorText.passwordDoNotMatch,
        true,
      );
      return;
    }
    try {
      await authRepository.signUp(email, password);
      if (context.mounted) {
        context.go(AppRouteUrl.loader);
      }
    } on EmailAlreadyInUse {
      SnackBarMessenger.showSnackBar(
        context,
        AppErrorText.emailAlreadyInUse,
        true,
      );
    } catch (e) {
      print(e);
      SnackBarMessenger.showSnackBar(
        context,
        AppErrorText.commonError,
        true,
      );
    }
  }
}
