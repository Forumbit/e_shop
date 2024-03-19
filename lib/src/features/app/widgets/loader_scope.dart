import 'package:e_shop/src/core/route/app_route_name.dart';
import 'package:e_shop/src/features/app/bloc/loader/loader_bloc.dart';
import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoaderScope extends StatefulWidget {
  const LoaderScope({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<LoaderScope> createState() => _LoaderScopeState();
}

class _LoaderScopeState extends State<LoaderScope> {
  late final LoaderBloc bloc;

  @override
  void initState() {
    super.initState();
    final dependencies = DependenciesScope.of(context);
    bloc = LoaderBloc(
      authRepository: dependencies.authRepository,
      cartRepository: dependencies.cartRepository,
    )..add(const LoaderEvent.started());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocListener<LoaderBloc, LoaderState>(
        listener: (context, state) => state.when(
          initial: () => null,
          isLogged: (isLogged) => isLogged
              ? context.go(AppRouteUrl.home)
              : context.go(AppRouteUrl.login),
          noVerifiedEmail: () => context.go(AppRouteUrl.verifyEmail),
        ),
        child: widget.child,
      ),
    );
  }
}
