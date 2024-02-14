import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void IncreaseConuter() {
    setState(() {
      _counter++;
    });
  }

  void ResetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          backgroundColor: Color.fromARGB(255, 241, 161, 255),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Counter Text : $_counter',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: ResetCounter,
              child: const Text(
                'Reset Counter',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: IncreaseConuter,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
