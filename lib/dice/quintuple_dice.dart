import 'package:flutter/material.dart';
import 'dart:math';

class QuintupleDice extends StatefulWidget {
  static String id = 'quintuple_dice';
  const QuintupleDice({super.key});

  @override
  State<QuintupleDice> createState() => _QuintupleDiceState();
}

class _QuintupleDiceState extends State<QuintupleDice> {
  int topLeftDice = 1;
  int topRightDice = 1;
  int bottomLeftDice = 1;
  int bottomRightDice = 1;
  int middleDice = 1;

  void getDice() {
    setState(() {
      topLeftDice = Random().nextInt(6) + 1;
      topRightDice = Random().nextInt(6) + 1;
      bottomLeftDice = Random().nextInt(6) + 1;
      bottomRightDice = Random().nextInt(6) + 1;
      middleDice = Random().nextInt(6) + 1;
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
                  child: Text('Quintuple Dice'),
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              getDice();
                            },
                            child: Image.asset('images/dice$topLeftDice.png'),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              getDice();
                            },
                            child: Image.asset('images/dice$topRightDice.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              getDice();
                            },
                            child: Image.asset('images/dice$middleDice.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              getDice();
                            },
                            child:
                                Image.asset('images/dice$bottomLeftDice.png'),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              getDice();
                            },
                            child:
                                Image.asset('images/dice$bottomRightDice.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
