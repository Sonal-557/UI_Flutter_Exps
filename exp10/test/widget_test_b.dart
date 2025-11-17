import 'package:flutter_test/flutter_test.dart';
import 'package:exp10/main_b.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Counter increments when button is pressed',
      (WidgetTester tester) async {
    await tester.pumpWidget(const Experiment10bApp());

    // Initial value check
    expect(find.text('Count: 0'), findsOneWidget);

    // Tap increment button
    await tester.tap(find.byKey(const Key('incrementBtn')));
    await tester.pump();

    // Expected updated count
    expect(find.text('Count: 1'), findsOneWidget);
  });
}
