import 'package:e_shop/common/constants/app_error_text.dart';
import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/common/utils/snack_bar_message.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  Future<void> _onLogoutPressed(
    AuthRepository authRepository,
    BuildContext context,
  ) async {
    try {
      await authRepository.logout();
      if (context.mounted) context.go(AppRouteUrl.loader);
    } catch (e) {
      print(e);
      SnackBarMessenger.showSnackBar(
        context,
        AppErrorText.commonError,
        true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context).value;
    return BlocProvider(
      create: (context) => UserBloc(
        authRepository: diContainer.getAuthRepository(),
      )..add(const UserEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => _onLogoutPressed(
                diContainer.getAuthRepository(),
                context,
              ),
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: Center(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) => state.when(
              initial: () =>
                  const CircularProgressIndicator(color: Colors.black),
              loading: () =>
                  const CircularProgressIndicator(color: Colors.black),
              loaded: (user) => Column(
                children: [
                  SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.r),
                      child: Image.network(
                        user?.photoURL ?? 'https://i.stack.imgur.com/l60Hf.png',
                        width: 50.w,
                        height: 50.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(user?.displayName ?? ''),
                  Text(user?.email ?? ''),
                  Text(user?.phoneNumber ?? ''),
                ],
              ),
              error: () => const Text(AppErrorText.commonError),
            ),
          ),
        ),
      ),
    );
  }
}
