import 'package:e_shop/src/core/common/utils/ctx_extensions.dart';
import 'package:e_shop/src/features/app/model/dependencies.dart';
import 'package:flutter/material.dart';

final class DependenciesScope extends InheritedWidget {
  const DependenciesScope({
    super.key,
    required super.child,
    required this.dependencies,
  });

  final Dependencies dependencies;

  static Dependencies of(BuildContext context) =>
      context.inhOf<DependenciesScope>(listen: false).dependencies;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
