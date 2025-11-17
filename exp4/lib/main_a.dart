import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment4aApp());
}

class Experiment4aApp extends StatelessWidget {
  const Experiment4aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 4a - Navigator Example',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}

// Screen 1
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 1 - Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to Screen 2
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: const Text('Go to Screen 2'),
        ),
      ),
    );
  }
}

// Screen 2
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Go back to previous screen
            Navigator.pop(context);
          },
          child: const Text('Back to Screen 1'),
        ),
      ),
    );
  }
}
