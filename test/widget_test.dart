import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'main.dart';

void main() {
  testWidgets('Dice app smoke test', (WidgetTester tester) async {
    // Build our Dice app and trigger a frame.
    await tester.pumpWidget(const DiceApp());

    // Verify that the AppBar title 'Dice' is present.
    expect(find.text('Dice'), findsOneWidget);

    // Verify that the dice images are loaded.
    expect(find.byType(Image), findsWidgets);
  });
}