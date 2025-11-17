import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment4bApp());
}

class Experiment4bApp extends StatelessWidget {
  const Experiment4bApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 4b - Named Routes',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      
      // Define named routes
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}

// Screen 1
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
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
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back to Home'),
        ),
      ),
    );
  }
}

// Screen 3
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back to Home'),
        ),
      ),
    );
  }
}
