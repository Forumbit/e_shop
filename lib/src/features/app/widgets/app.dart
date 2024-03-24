import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/features/cart/widgets/cart_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract interface class AppRoute {
  RouterConfig<Object>? get router;
}

class MyApp extends StatelessWidget {
  final RouterConfig<Object>? _router;
  MyApp({
    super.key,
    required AppRoute appRoute,
  }) : _router = appRoute.router;

  @override
  Widget build(BuildContext context) {
    return CartScope(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.background,
              appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.background,
              ),
              fontFamily: 'Nunito',
              colorScheme: ColorScheme.fromSeed(
                seedColor: AppColors.accent,
              ),
              textSelectionTheme: const TextSelectionThemeData(
                selectionColor: AppColors.mainColor,
                cursorColor: AppColors.mainColor,
                selectionHandleColor: AppColors.mainColor,
              ),
              useMaterial3: true,
            ),
            routerConfig: _router,
          );
        },
      ),
    );
  }
}
