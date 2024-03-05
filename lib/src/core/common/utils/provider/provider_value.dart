import 'package:flutter/material.dart';

class ProviderValue<T> extends InheritedWidget {
  const ProviderValue({
    super.key,
    required this.value,
    required Widget child,
  }) : super(child: child);

  final T value;

  static T? maybeOf<T>(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ProviderValue<T>>()
        ?.widget;
    return widget is ProviderValue<T> ? widget.value : null;
  }

  static T of<T>(BuildContext context) {
    final provider = maybeOf<T>(context);
    if (provider == null) throw Exception('The provider is null');
    return provider;
  }

  @override
  bool updateShouldNotify(ProviderValue oldWidget) => false;
}
