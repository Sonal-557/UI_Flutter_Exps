import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment6aApp());
}

// Stateless App
class Experiment6aApp extends StatelessWidget {
  const Experiment6aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 6a - Custom Widgets',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePageCustomWidgets(),
    );
  }
}

// Custom Widget Example
class ColoredCard extends StatelessWidget {
  final String text;
  final Color color;

  const ColoredCard({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class HomePageCustomWidgets extends StatelessWidget {
  const HomePageCustomWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Widgets Example')),
      body: ListView(
        children: const [
          ColoredCard(text: 'Card 1', color: Colors.deepPurple),
          ColoredCard(text: 'Card 2', color: Colors.orange),
          ColoredCard(text: 'Card 3', color: Colors.green),
        ],
      ),
    );
  }
}
