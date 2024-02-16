import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  const Player(
      {super.key, required this.playerImage, required this.playerName});
  final String playerName;
  final Image playerImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 100,
                child: playerImage,
              ),
            ),
          ),
          Text(
            playerName,
            style: TextStyle(
              fontSize: 28,
              color: Colors.blue.shade700,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
