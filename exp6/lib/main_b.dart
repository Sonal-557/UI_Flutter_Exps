import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment6bApp());
}

class Experiment6bApp extends StatelessWidget {
  const Experiment6bApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 6b - Themes & Styling',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
      home: const HomePageThemes(),
    );
  }
}

class HomePageThemes extends StatelessWidget {
  const HomePageThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Themes & Styling Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This text uses Theme styling!',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Themed Button'),
            ),
          ],
        ),
      ),
    );
  }
}
//cd C:\Users\sonam\OneDrive\Desktop\flutterExps\exp6
//flutter run -t lib/main_a.dart -d chrome
//flutter run -t lib/main_b.dart -d chrome
