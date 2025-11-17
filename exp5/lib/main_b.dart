import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Step 1: Create a ChangeNotifier class
class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const Experiment5bApp(),
    ),
  );
}

class Experiment5bApp extends StatelessWidget {
  const Experiment5bApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 5b - Provider Example',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePageProvider(),
    );
  }
}

class HomePageProvider extends StatelessWidget {
  const HomePageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Provider State Management')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pressed the button this many times:'),
            Text(
              '${counterProvider.counter}',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => counterProvider.increment(),
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
//flutter run -t lib/main_b.dart -d chrome
