import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment3aApp());
}

class Experiment3aApp extends StatelessWidget {
  const Experiment3aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 3a - Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen width detect karo
    final screenWidth = MediaQuery.of(context).size.width;

    // Container width based on screen size
    double containerWidth;
    if (screenWidth < 600) {
      // Mobile
      containerWidth = screenWidth * 0.9;
    } else if (screenWidth < 1200) {
      // Tablet
      containerWidth = screenWidth * 0.6;
    } else {
      // Desktop
      containerWidth = screenWidth * 0.4;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive UI - Experiment 3a')),
      body: Center(
        child: Container(
          width: containerWidth,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'This container adjusts based on screen size!',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Responsive Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//cd C:\Users\sonam\OneDrive\Desktop\flutterExps\exp3
//flutter pub get
//flutter run -t lib/main_a.dart -d chrome
