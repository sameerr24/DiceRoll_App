import 'package:flutter/material.dart';
import 'dart:math';

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});
  @override
  State<Diceroller> createState() {
    return _Diceroller();
  }
}

class _Diceroller extends State<Diceroller> {
  var currentDiceRoll = 1;
  final randomizer = Random();
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // generates num b/w (1-6)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 0), //spacing b/w the widgets
            foregroundColor: Colors.red,
            backgroundColor: const Color.fromARGB(255, 88, 235, 255),
          ),
          child: const Text("ROLL THE DICE"),
        )
      ],
    );
  }
}
