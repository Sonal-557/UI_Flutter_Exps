import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const Experiment9aApp());
}

class Experiment9aApp extends StatelessWidget {
  const Experiment9aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 9a - Fetch Data',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const FetchDataPage(),
    );
  }
}

class FetchDataPage extends StatefulWidget {
  const FetchDataPage({super.key});

  @override
  State<FetchDataPage> createState() => _FetchDataPageState();
}

class _FetchDataPageState extends State<FetchDataPage> {
  List<dynamic> data = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    const url = 'https://jsonplaceholder.typicode.com/posts'; // Sample API
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      // Handle API error
      debugPrint('Failed to fetch data: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fetch Data - Experiment 9a')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                return ListTile(
                  title: Text(item['title']),
                  subtitle: Text(item['body']),
                );
              },
            ),
    );
  }
}
//cd C:\Users\sonam\OneDrive\Desktop\flutterExps\exp9
//flutter run -t lib/main_a.dart -d chrome
//flutter run -t lib/main_b.dart -d chrome
