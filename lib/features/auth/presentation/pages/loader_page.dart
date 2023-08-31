import 'dart:async';

import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoaderPage extends StatefulWidget {
  const LoaderPage({super.key});

  @override
  State<LoaderPage> createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {
  late final StreamSubscription<User?> _subscription;

  void _onAuthChange(User? event) {
    if (event != null) {
      if (!event.emailVerified) {
        context.go(AppRouteUrl.verifyEmail);
        return;
      }
    } else {
      context.go(AppRouteUrl.login);
      return;
    }
    context.go(AppRouteUrl.home);
  }

  @override
  void initState() {
    super.initState();
    //! Firebase in UI!!!! Osujdau
    _subscription =
        FirebaseAuth.instance.authStateChanges().listen(_onAuthChange);
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //! Change
    return const Scaffold(
      body: Center(
        child: Text('salfdkjl;'),
      ),
    );
  }
}
