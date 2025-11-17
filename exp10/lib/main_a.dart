import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment10App());
}

class Experiment10App extends StatelessWidget {
  const Experiment10App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 10a - Unit Testing',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unit Test Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello, Flutter!'),
            ElevatedButton(
              key: const Key('incrementButton'),
              onPressed: () {},
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
// cd C:\Users\sonam\OneDrive\Desktop\flutterExps\exp10
// flutter pub get
// flutter test test/widget_test_a.dart
// flutter run -t lib/main_b.dart -d chrome
// flutter test test/widget_test_b.dart
