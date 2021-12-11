import 'package:flutter/material.dart';
import 'dart:math';

class DiceGame extends StatefulWidget {
  const DiceGame({Key key}) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int rightDice = 6;
  int leftDice = 1;

  rollDices() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: rollDices,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/dice$leftDice.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: rollDices,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/dice$rightDice.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// 