import 'package:flutter/material.dart';
import '../controller/theme_controller.dart';
import '../theme/light_theme.dart';
import '../theme/dark_theme.dart';

class AdaptiveThemeBuilder extends StatelessWidget {
  final ThemeController controller;
  final Widget child;
  final Color primaryColor;

  const AdaptiveThemeBuilder({
    super.key,
    required this.controller,
    required this.child,
    this.primaryColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return MaterialApp(
          theme: LightAppTheme.theme(primaryColor: primaryColor),
          darkTheme: DarkAppTheme.theme(primaryColor: primaryColor),
          themeMode: controller.themeMode,
          home: child,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
