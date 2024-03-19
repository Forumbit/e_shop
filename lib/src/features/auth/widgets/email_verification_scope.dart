import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:e_shop/src/features/auth/bloc/email_verification/email_verification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailVerificationScope extends StatefulWidget {
  const EmailVerificationScope({super.key, required this.child});

  final Widget child;

  @override
  State<EmailVerificationScope> createState() => _EmailVerificationScopeState();
}

class _EmailVerificationScopeState extends State<EmailVerificationScope> {
  late final EmailVerificationBloc bloc;

  @override
  void initState() {
    super.initState();
    final dependencies = DependenciesScope.of(context);
    bloc = EmailVerificationBloc(
      dependencies.authRepository,
    )..add(const EmailVerificationEvent.started());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmailVerificationBloc>(
      create: (_) => bloc,
      child: widget.child,
    );
  }
}
