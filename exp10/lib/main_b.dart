import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment10bApp());
}

class Experiment10bApp extends StatelessWidget {
  const Experiment10bApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 10b - Integration Test',
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App Test')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $count',
              key: const Key('countText'),
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              key: const Key('incrementBtn'),
              onPressed: increment,
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
