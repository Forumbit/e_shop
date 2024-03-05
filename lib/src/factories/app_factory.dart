import 'package:e_shop/src/core/common/utils/observer/app_bloc_observer.dart';
import 'package:e_shop/src/core/common/utils/provider/provider_value.dart';
import 'package:e_shop/src/di/di_container.dart';
import 'package:e_shop/src/features/app/widgets/app.dart';
import 'package:e_shop/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

AppFactory appFactory() => AppFactoryImpl();

class AppFactoryImpl implements AppFactory {
  final _diContainer = DIContainer();

  @override
  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = AppBlocObserver();
    await Firebase.initializeApp();
  }

  @override
  Widget makeApp() {
    return ProviderValue(
      value: _diContainer,
      child: MyApp(
        appRoute: _diContainer.makeRoute(),
      ),
    );
  }
}
