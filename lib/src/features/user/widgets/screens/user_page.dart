import 'package:e_shop/src/core/common/constants/app_error_text.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/user/widgets/logout_alert_dialog.dart';
import 'package:e_shop/src/features/user/bloc/user/user_bloc.dart';
import 'package:e_shop/src/features/user/widgets/user_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  Future<void> _onLogoutPressed(BuildContext context) async {
    UserScope.of(context, listen: false).logoutUser();
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => LogoutAlertDialog(
        onSubmitted: () => _onLogoutPressed(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.profile),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => _showAlertDialog(context),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) => state.when(
            initial: () => const CircularProgressIndicator(color: Colors.black),
            loading: () => const CircularProgressIndicator(color: Colors.black),
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
    );
  }
}
