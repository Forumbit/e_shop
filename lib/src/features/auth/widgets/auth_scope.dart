import 'package:e_shop/src/core/common/utils/ctx_extensions.dart';
import 'package:e_shop/src/core/common/utils/snack_bar_message.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:e_shop/src/features/auth/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract interface class AuthScopeController {
  void onLoginWithGmailButtonPressed();
  void onSignUpButtonPressed(
    String email,
    String password,
    String confirmPassword,
  );
  void onLoginButtonPressed(String email, String password);
  void onResetPasswordButtonPressed(String email);
}

class AuthScope extends StatefulWidget {
  const AuthScope({super.key, required this.child});

  final Widget child;

  static AuthScopeController of(BuildContext context, {bool listen = false}) =>
      context.inhOf<_InheritedAuthScope>(listen: listen).controller;

  @override
  State<AuthScope> createState() => _AuthScopeState();
}

class _AuthScopeState extends State<AuthScope> implements AuthScopeController {
  late final AuthBloc bloc;

  @override
  void initState() {
    super.initState();
    final dependencies = DependenciesScope.of(context);
    bloc = AuthBloc(dependencies.authRepository);
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  void onLoginWithGmailButtonPressed() {
    bloc.add(const AuthEvent.onLoginWithGmail());
  }

  @override
  void onLoginButtonPressed(String email, String password) {
    bloc.add(AuthEvent.onLogin(email, password));
  }

  @override
  void onSignUpButtonPressed(
    String email,
    String password,
    String confirmPassword,
  ) {
    bloc.add(AuthEvent.onSignUp(email, password, confirmPassword));
  }

  @override
  Future<void> onResetPasswordButtonPressed(String email) async {
    bloc.add(AuthEvent.onResetPassword(email));
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedAuthScope(
      controller: this,
      child: BlocProvider(
        create: (context) => bloc,
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => Never,
            message: (message, error) => CustomSnackBar.showSnackBar(
              context,
              message,
              error,
            ),
            success: () => context.go(AppRouteUrl.loader),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

final class _InheritedAuthScope extends InheritedWidget {
  final AuthScopeController controller;

  const _InheritedAuthScope({
    required super.child,
    required this.controller,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) =>
      oldWidget.hashCode != hashCode;
}
