import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GmailButton extends StatelessWidget {
  const GmailButton({
    super.key,
    required this.authRepository,
  });

  final AuthRepository authRepository;

  Future<void> _onLoginWithGmailButtonPressed(
    BuildContext context,
    AuthRepository authRepository,
  ) async {
    await authRepository.loginWithGmail();
    if (context.mounted) {
      context.go(AppRouteUrl.loader);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => _onLoginWithGmailButtonPressed(context, authRepository),
      child: const Text('Gmail'),
    );
  }
}
