import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/app/presentation/bloc/loader/loader_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context);
    return BlocProvider.value(
      value: LoaderBloc(
        authRepository: diContainer.getAuthRepository(),
        cartRepository: diContainer.getCartRepository(),
      )..add(const LoaderEvent.started()),
      child: BlocListener<LoaderBloc, LoaderState>(
        listener: (context, state) => state.when(
          initial: () => null,
          isLogged: (isLogged) => isLogged
              ? context.go(AppRouteUrl.home)
              : context.go(AppRouteUrl.login),
          noVerifiedEmail: () => context.go(AppRouteUrl.verifyEmail),
        ),
        child: const Scaffold(
          body: Center(
            child: Text(
              'Loading...',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
