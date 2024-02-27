import 'package:flutter/material.dart';
import 'core/cache/cache_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isDark = CacheHelper.getBool('is_dark') ?? false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isDark = !isDark;
                  CacheHelper.putBool('is_dark', isDark);
                });
              },
              child: isDark
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.sunny),
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Welcome, ${CacheHelper.getString('user_first_name')} ${CacheHelper.getString('user_last_name')}',
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
