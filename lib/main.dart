import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_light_dark_theme/theme_builder.dart';

import 'controller/theme_controller.dart';
import 'my_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeController = ThemeController();
  await themeController.loadTheme();

  runApp(
    AdaptiveThemeBuilder(
      controller: themeController,
      primaryColor: Colors.deepPurple,
      child: MyApp(controller: themeController),
    ),
  );
}

class MyApp extends StatelessWidget {
  final ThemeController controller;

  const MyApp({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return MyHomePage(
      title: 'Flutter Theme',
      controller: controller,
    );
  }
}

