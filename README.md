# flutter_light_dark_theme 🌗

A lightweight and easy-to-use Flutter library for managing **Light & Dark themes**
with **persistent storage** and **Material 3** support.

This package helps you add theme switching to your app with **minimal setup**
and without any state-management dependency.

---

## ✨ Features

- 🌞 Light & 🌙 Dark theme switching
- 💾 Persist theme using SharedPreferences
- 🎨 Material 3 (M3) support
- ⚡ Simple & clean API
- 🔄 System / Light / Dark modes
- 🧩 No Provider / Bloc / Riverpod required
- 📱 Android, iOS, Web supported

---

## 📦 Installation

Add the package to your project:

```
bash
flutter pub add flutter_light_dark_theme
OR
dependencies:
  flutter_light_dark_theme: ^1.0.0
```
## Preview

https://github.com/user-attachments/assets/b7867ce1-9782-4273-8436-308a93f94226


## 🚀 Getting Started
```
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
```
## Create Your App Widget
```
class MyApp extends StatelessWidget {
  final ThemeController controller;

  const MyApp({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MyHomePage(
      title: 'Theme Playground',
      controller: controller,
    );
  }
}

```
## Toggle Theme in UI
```
IconButton(
  icon: Icon(
    controller.isDark ? Icons.light_mode : Icons.dark_mode,
  ),
  onPressed: () {
    controller.setTheme(
      controller.isDark ? ThemeMode.light : ThemeMode.dark,
    );
  },
);
```
## 🎨 Customization
```
AdaptiveThemeBuilder(
  controller: controller,
  primaryColor: Colors.green,
  child: MyApp(controller: controller),
);

```
## Supported Theme Modes
```
ThemeMode.light

ThemeMode.dark

ThemeMode.system
```
## 📄 Dependencies
```
https://pub.dev/packages/shared_preferences
```
## 📄 License
```
MIT License

Copyright (c) 2025 Excelsior Technologies 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
