import 'package:flutter/material.dart';
import 'players.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Player> players = [
    Player(
      playerImage: Image.asset('assets/images/felix.jpg'),
      playerName: 'Joao Felix',
    ),
    Player(
      playerImage: Image.asset('assets/images/frenkie.jpg'),
      playerName: 'Frenkie DeJong',
    ),
    Player(
      playerImage: Image.asset('assets/images/guardiola.jpg'),
      playerName: 'Guardiola',
    ),
    Player(
      playerImage: Image.asset('assets/images/neymar.jpg'),
      playerName: 'Neymar Jr',
    ),
    Player(
      playerImage: Image.asset('assets/images/ronaldinho.jpg'),
      playerName: 'Ronaldinho',
    ),
    Player(
      playerImage: Image.asset('assets/images/samuel_eto.jpg'),
      playerName: 'Samuel E\'To',
    ),
    Player(
      playerImage: Image.asset('assets/images/the_goat.jpg'),
      playerName: 'Lionel Messi',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Barcelona Players',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: players.length,
          itemBuilder: (context, index) => players[index],
          padding: const EdgeInsets.all(10),
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
