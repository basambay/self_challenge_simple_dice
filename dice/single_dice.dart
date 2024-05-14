import 'package:flutter/material.dart';
import 'dart:math';

class SingleDice extends StatefulWidget {
  const SingleDice({super.key});
  static String id = 'single_dice';

  @override
  State<SingleDice> createState() => _SingleDiceState();
}

class _SingleDiceState extends State<SingleDice> {
  int middleDice = 1;

  void getDice() {
    setState(() {
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
              child: Text('Single Dice'),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(80.0),
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
        ),
      ),
    );
  }
}
