import 'package:flutter/material.dart';
import 'dart:math';

class TripleDice extends StatefulWidget {
  static String id = 'triple_dice';
  const TripleDice({super.key});

  @override
  State<TripleDice> createState() => _TripleDiceState();
}

class _TripleDiceState extends State<TripleDice> {
  int topDice = 1;
  int bottomDice = 1;
  int middleDice = 1;

  void getDice() {
    setState(() {
      topDice = Random().nextInt(6) + 1;
      bottomDice = Random().nextInt(6) + 1;
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
                  child: Text('Triple Dice'),
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        getDice();
                      },
                      child: Image.asset('images/dice$topDice.png'),
                    ),
                  ),
                  Expanded(
                      child: TextButton(
                    onPressed: () {
                      getDice();
                    },
                    child: Image.asset('images/dice$middleDice.png'),
                  )),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        getDice();
                      },
                      child: Image.asset('images/dice$bottomDice.png'),
                    ),
                  ),
                ],
              ))),
    );
  }
}
