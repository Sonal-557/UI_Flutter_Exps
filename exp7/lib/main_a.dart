import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment7aApp());
}

class Experiment7aApp extends StatelessWidget {
  const Experiment7aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 7a - Form Design',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePageFormDesign(),
    );
  }
}

class HomePageFormDesign extends StatelessWidget {
  const HomePageFormDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Design Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
//cd C:\Users\sonam\OneDrive\Desktop\flutterExps\exp7
//flutter run -t lib/main_a.dart -d chrome
//flutter run -t lib/main_b.dart -d chrome
