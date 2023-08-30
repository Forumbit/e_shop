import 'package:flutter/material.dart';

class SnackBarMessenger {
  static const successColor = Colors.greenAccent;
  static const errorColor = Colors.redAccent;

  static showSnackBar(
    BuildContext context,
    String message,
    bool error,
  ) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: error ? errorColor : successColor,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
