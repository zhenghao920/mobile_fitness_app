import 'package:flutter/material.dart';

class Utils {
  static final messageKey = GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String? text) {
    if (text == null) return;
    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.red,
    );

    messageKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
