import 'package:e_shop/src/core/common/utils/ctx_extensions.dart';
import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:e_shop/src/features/user/bloc/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract interface class UserScopeController {
  void logoutUser();
}

class UserScope extends StatefulWidget {
  const UserScope({
    super.key,
    required this.child,
  });

  final Widget child;

  static UserScopeController of(BuildContext context, {bool listen = false}) =>
      context.inhOf<_UserScopeInherited>(listen: listen).controller;

  @override
  State<UserScope> createState() => _UserScopeState();
}

class _UserScopeState extends State<UserScope> implements UserScopeController {
  late final UserBloc bloc;

  @override
  void initState() {
    super.initState();
    final dependencies = DependenciesScope.of(context);
    bloc = UserBloc(
      authRepository: dependencies.authRepository,
    )..add(const UserEvent.started());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  void logoutUser() {
    bloc.add(const UserEvent.logout());
    context.go(AppRouteUrl.loader);
  }

  @override
  Widget build(BuildContext context) {
    return _UserScopeInherited(
      controller: this,
      child: BlocProvider(
        create: (context) => bloc,
        child: widget.child,
      ),
    );
  }
}

final class _UserScopeInherited extends InheritedWidget {
  const _UserScopeInherited({
    required super.child,
    required this.controller,
  });

  final UserScopeController controller;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.hashCode != hashCode;
  }
}
