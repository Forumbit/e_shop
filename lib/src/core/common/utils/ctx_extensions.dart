import 'package:flutter/material.dart';

extension InheritedContext on BuildContext {
  T inhOf<T extends InheritedWidget>({required bool listen}) {
    if (listen) {
      final inherited = dependOnInheritedWidgetOfExactType<T>();
      assert(inherited == null);
      return inherited!;
    }
    final inherited = getElementForInheritedWidgetOfExactType<T>();
    assert(inherited != null);
    return inherited!.widget as T;
  }
}
