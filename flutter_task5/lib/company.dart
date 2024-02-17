import 'package:flutter/material.dart';

class Company extends StatelessWidget {
  const Company(
      {super.key, required this.companyName, required this.companyStock});

  final String companyName;
  final double companyStock;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Card(
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 18,
                  child: Text(
                    companyName[0],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text(
                companyName,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '\$$companyStock',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
