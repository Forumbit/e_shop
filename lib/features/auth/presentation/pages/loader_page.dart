import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/cart/domain/entities/cart_entity.dart';
import 'package:e_shop/features/cart/domain/repository/cart_repository.dart';
import 'package:e_shop/features/user/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({super.key});

  void _onInitAfterBuild(
    BuildContext context,
    AuthRepository authRepository,
    CartRepository cartRepository,
  ) async {
    //! Needing refactor
    final UserEntity? user = authRepository.getUser();
    if (user != null) {
      if (!user.emailVerified) {
        context.go(AppRouteUrl.verifyEmail);
        return;
      } else {
        final cart = await cartRepository.getCart(user.uid);
        print(cart);
        if (cart == null) {
          final cartEntity = CartEntity(
            docId: null,
            uid: user.uid,
            products: [],
          );
          await cartRepository.createCart(cartEntity);
        }

        if (context.mounted) context.go(AppRouteUrl.home);
        return;
      }
    }
    context.go(AppRouteUrl.login);
  }

  // @override
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final diContainer = ProviderValue.of<DIContainer>(context);
      _onInitAfterBuild(
        context,
        diContainer.getAuthRepository(),
        diContainer.getCartRepository(),
      );
    });
    //! Change
    return const Scaffold(
      body: Center(
        child: Text(
          'Loading...',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
