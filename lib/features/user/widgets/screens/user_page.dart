import 'package:e_shop/core/common/constants/app_error_text.dart';
import 'package:e_shop/core/common/constants/app_texts.dart';
import 'package:e_shop/features/user/widgets/logout_alert_dialog.dart';
import 'package:e_shop/core/route/app_route_name.dart';
import 'package:e_shop/core/common/utils/provider/provider_value.dart';
import 'package:e_shop/core/common/utils/snack_bar_message.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/user/bloc/user/user_bloc.dart';
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
      if (!context.mounted) return;
      CustomSnackBar.showSnackBar(
        context,
        AppErrorText.commonError,
        true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context);
    return BlocProvider(
      create: (context) => UserBloc(
        authRepository: diContainer.getAuthRepository(),
      )..add(const UserEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppTexts.profile),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => showDialog(
                context: context,
                builder: (ctx) => LogoutAlertDialog(
                  onSubmitted: () => _onLogoutPressed(
                    diContainer.getAuthRepository(),
                    context,
                  ),
                ),
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
                    height: 50.w,
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
