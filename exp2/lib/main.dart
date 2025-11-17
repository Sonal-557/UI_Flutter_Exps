import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment2App());
}

class Experiment2App extends StatelessWidget {
  const Experiment2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 2 - Flutter Widgets & Layouts',
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
    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 2')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Text widget
            const Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            //Image widget (from network)
Image.network(
  'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
  height: 100,
),

const SizedBox(height: 16),

            // Container with styling
            Container(
              height: 100,
              color: Colors.deepPurpleAccent,
              child: const Center(
                child: Text(
                  'This is a Container',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Row layout
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.favorite, color: Colors.red),
                Icon(Icons.thumb_up, color: Colors.blue),
              ],
            ),
            const SizedBox(height: 16),

            // Stack layout
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(color: Colors.lightBlueAccent, width: double.infinity),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.pinkAccent,
                      child: const Center(
                        child: Text('Stack 1', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                      child: const Center(
                        child: Text('Stack 2', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
