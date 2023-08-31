import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/user/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({super.key});

  void _onInitAfterBuild(
    BuildContext context,
    AuthRepository authRepository,
  ) {
    final UserEntity? user = authRepository.getUser();
    if (user != null) {
      if (!user.emailVerified) {
        context.go(AppRouteUrl.verifyEmail);
        return;
      } else {
        context.go(AppRouteUrl.home);
        return;
      }
    }
    context.go(AppRouteUrl.login);
  }

  // @override
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final diContainer = ProviderValue.of<DIContainer>(context).value;
      _onInitAfterBuild(context, diContainer.getAuthRepository());
    });
    //! Change
    return const Scaffold(
      body: Center(
        child: Text('salfdkjl;'),
      ),
    );
  }
}
