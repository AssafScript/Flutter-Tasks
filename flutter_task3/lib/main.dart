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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'MSP',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
              ),
              Text(
                'ASU',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
              ),
              Text(
                'Flutter Committee',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
