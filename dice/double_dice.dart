import 'package:flutter/material.dart';
import 'dart:math';

class DoubleDice extends StatefulWidget {
  static String id = 'double_dice';
  const DoubleDice({super.key});

  @override
  State<DoubleDice> createState() => _DoubleDiceState();
}

class _DoubleDiceState extends State<DoubleDice> {
  int leftDice = 1;
  int rightDice = 1;

  void getDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Center(
              child: Text('Double Dice'),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          getDice();
                        },
                        child: Image.asset(
                          'images/dice$leftDice.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            getDice();
                          },
                          child: Image.asset('images/dice$rightDice.png')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
