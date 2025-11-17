import 'package:flutter/material.dart';

void main() {
  runApp(const Experiment8bApp());
}

class Experiment8bApp extends StatelessWidget {
  const Experiment8bApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 8b - Fade & Slide',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const FadeSlideAnimationPage(),
    );
  }
}

class FadeSlideAnimationPage extends StatefulWidget {
  const FadeSlideAnimationPage({super.key});

  @override
  State<FadeSlideAnimationPage> createState() => _FadeSlideAnimationPageState();
}

class _FadeSlideAnimationPageState extends State<FadeSlideAnimationPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(reverse: true);
    _slideAnimation = Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0, 1))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fade & Slide Animation')),
      body: Center(
        child: SlideTransition(
          position: _slideAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.deepPurpleAccent,
              child: const Center(
                child: Text(
                  'Fade & Slide!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
