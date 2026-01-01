import 'package:flutter/material.dart';
import 'controller/theme_controller.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final ThemeController controller;

  const MyHomePage({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = controller.isDark;

    return Scaffold(
      appBar: AppBar(title: Text(title), actions: [_themeModeButton(isDark)]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _sectionTitle('Theme Mode'),
          SizedBox(height: 10),
          _themeModeCard(isDark),
        ],
      ),
    );
  }

  Widget _themeModeButton(bool isDark) {
    return IconButton(
      tooltip: 'Toggle Theme',
      icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
      onPressed: () {
        controller.setTheme(isDark ? ThemeMode.light : ThemeMode.dark);
      },
    );
  }

  // ---------- SECTIONS ----------

  Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        textAlign: TextAlign.start,
        text.toUpperCase(),
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }

  Widget _themeModeCard(bool isDark) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: ListTile(
          leading: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
          title: Text(isDark ? 'Dark Mode Enabled' : 'Light Mode Enabled'),
          subtitle: const Text('Theme changes are persisted automatically'),
          trailing: Switch(
            value: isDark,
            onChanged: (value) {
              controller.setTheme(value ? ThemeMode.dark : ThemeMode.light);
            },
          ),
        ),
      ),
    );
  }
}
