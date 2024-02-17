import 'package:flutter/material.dart';
import 'company.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Company> companies = [
    const Company(
      companyName: 'Facebook',
      companyStock: 2213.13,
    ),
    const Company(
      companyName: 'Whatsapp',
      companyStock: 14121.1,
    ),
    const Company(
      companyName: 'Snapchat',
      companyStock: 25225.414,
    ),
    const Company(
      companyName: 'Google',
      companyStock: 1000.0,
    ),
    const Company(
      companyName: 'Microsoft',
      companyStock: 98491.123,
    ),
    const Company(
      companyName: 'Samsung',
      companyStock: 93847,
    ),
    const Company(
      companyName: 'Apple',
      companyStock: 149489,
    ),
    const Company(
      companyName: 'Instagram',
      companyStock: 84933.142,
    ),
    const Company(
      companyName: 'Zoom',
      companyStock: 12498,
    ),
    const Company(
      companyName: 'TikTok',
      companyStock: 1891,
    ),
    const Company(
      companyName: 'Xiaomi',
      companyStock: 13049.1914,
    ),
    const Company(
      companyName: 'OPPO',
      companyStock: 14414.13,
    ),
    const Company(
      companyName: 'Huawei',
      companyStock: 9959.112,
    ),
    const Company(
      companyName: 'EA Sports',
      companyStock: 1421.131,
    ),
    const Company(
      companyName: 'IKEA',
      companyStock: 1271.14,
    ),
    const Company(
      companyName: 'SONY',
      companyStock: 9981.41,
    ),
    const Company(
      companyName: 'Adobe',
      companyStock: 9483.44,
    ),
    const Company(
      companyName: 'Jet Brains',
      companyStock: 1849.13,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListView Builder',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.builder(
            itemCount: companies.length,
            itemBuilder: (context, index) => companies[index],
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
