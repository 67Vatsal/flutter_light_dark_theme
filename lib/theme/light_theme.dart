import 'package:flutter/material.dart';

class LightAppTheme {
  static ThemeData theme({
    Color primaryColor = Colors.blue,
    bool useMaterial3 = true,
  }) {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: useMaterial3,
      colorScheme: ColorScheme.light(
        primary: primaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
