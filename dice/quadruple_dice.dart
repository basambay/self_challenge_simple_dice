import 'package:flutter/material.dart';
import 'dart:math';

class QuadrupleDice extends StatefulWidget {
  static String id = 'quadruple_dice';
  const QuadrupleDice({super.key});

  @override
  State<QuadrupleDice> createState() => _QuadrupleDiceState();
}

class _QuadrupleDiceState extends State<QuadrupleDice> {
  int topLeftDice = 1;
  int topRightDice = 1;
  int bottomLeftDice = 1;
  int bottomRightDice = 1;

  void getDice() {
    setState(() {
      topLeftDice = Random().nextInt(6) + 1;
      topRightDice = Random().nextInt(6) + 1;
      bottomLeftDice = Random().nextInt(6) + 1;
      bottomRightDice = Random().nextInt(6) + 1;
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
                  child: Text('Quadruple Dice'),
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
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
                              child:
                                  Image.asset('images/dice$topRightDice.png'),
                            ),
                          ),
                        ],
                      ),
                      Row(
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
                              child: Image.asset(
                                  'images/dice$bottomRightDice.png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}
