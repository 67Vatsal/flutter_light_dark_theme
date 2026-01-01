import 'package:flutter/material.dart';

class DarkAppTheme {
  static ThemeData theme({
    Color primaryColor = Colors.blue,
    bool useMaterial3 = true,
  }) {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: useMaterial3,
      colorScheme: ColorScheme.dark(
        primary: primaryColor,
      ),
      scaffoldBackgroundColor: Colors.black,
    );
  }
}
