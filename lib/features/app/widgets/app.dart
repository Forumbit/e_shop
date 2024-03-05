import 'package:e_shop/core/common/constants/app_colors.dart';
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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Nunito',
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.mainColor,
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
    );
  }
}
