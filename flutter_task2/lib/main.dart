import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          backgroundColor: Colors.purple.shade100,
        ),
        body: const Center(
          child: Text(
            'Flutter Committee MSP',
            style: TextStyle(
              backgroundColor: Colors.blue,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
