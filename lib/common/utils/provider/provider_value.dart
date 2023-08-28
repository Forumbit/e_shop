import 'package:flutter/material.dart';

class ProviderValue<T> extends InheritedWidget {
  const ProviderValue({
    super.key,
    required this.value,
    required Widget child,
  }) : super(child: child);

  final T value;

  static ProviderValue? maybeOf<T>(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProviderValue<T>>();
  }

  static ProviderValue of<T>(BuildContext context) {
    final provider = maybeOf<T>(context);
    if (provider == null) throw Exception('The provider is null');
    return provider;
  }


  @override
  bool updateShouldNotify(ProviderValue oldWidget) => false;
}
