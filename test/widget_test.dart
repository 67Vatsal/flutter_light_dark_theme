import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_light_dark_theme/main.dart';
import 'package:flutter_light_dark_theme/controller/theme_controller.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final themeController = ThemeController();

    await tester.pumpWidget(
      MaterialApp(
        home: MyApp(controller: themeController),
      ),
    );

    // Verify counter starts at 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap '+' button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify counter increments
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
