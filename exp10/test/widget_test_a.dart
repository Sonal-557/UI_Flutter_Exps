import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:exp10/main_a.dart';

void main() {
  testWidgets('Check if Text widget is present', (WidgetTester tester) async {
    await tester.pumpWidget(const Experiment10App());

    // Verify the Text widget
    expect(find.text('Hello, Flutter!'), findsOneWidget);
  });

  testWidgets('Check if Button is present', (WidgetTester tester) async {
    await tester.pumpWidget(const Experiment10App());

    // Verify the Button widget
    expect(find.byKey(const Key('incrementButton')), findsOneWidget);
  });
}
