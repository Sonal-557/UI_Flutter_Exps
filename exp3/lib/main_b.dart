import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment3bApp());
}

class Experiment3bApp extends StatelessWidget {
  const Experiment3bApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 3b - Responsive Breakpoints',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Layout based on breakpoints
    Widget content;
    if (screenWidth < 600) {
      // Mobile Layout
      content = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.phone_android, size: 60, color: Colors.orange),
          SizedBox(height: 10),
          Text('Mobile Layout', style: TextStyle(fontSize: 20)),
        ],
      );
    } else if (screenWidth < 1200) {
      // Tablet Layout
      content = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.tablet, size: 60, color: Colors.blue),
          Text('Tablet Layout', style: TextStyle(fontSize: 22)),
          Icon(Icons.tablet_mac, size: 60, color: Colors.blueAccent),
        ],
      );
    } else {
      // Desktop Layout
      content = Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.desktop_mac, size: 70, color: Colors.green),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Desktop Layout', style: TextStyle(fontSize: 24)),
              SizedBox(height: 10),
              Text('Resizable Widgets', style: TextStyle(fontSize: 18)),
            ],
          ),
          Icon(Icons.desktop_windows, size: 70, color: Colors.greenAccent),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Breakpoints - Experiment 3b')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: content,
        ),
      ),
    );
  }
}
// cd C:\Users\sonam\OneDrive\Desktop\flutterExps\exp3
// flutter pub get
// flutter run -t lib/mainb.dart -d chrome
