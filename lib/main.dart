import 'dart:math';

import 'package:flutter/material.dart';

const Color kCoral = Color(0xFFED5B47);

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kCoral,
        appBar: AppBar(
          title: const Text(
            'Dice',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: kCoral,
          foregroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // State variables for both dice
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  // Function to randomize both dice when either is pressed
  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
// Left die
                Expanded(
                  child: TextButton(
                    onPressed: rollDice,
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
// Right die
                Expanded(
                  child: TextButton(
                    onPressed: rollDice,
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Tap either die to roll',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}