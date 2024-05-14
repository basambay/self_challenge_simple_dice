import 'package:flutter/material.dart';
import 'package:self_challenge_simple_dice/dice/double_dice.dart';
import 'package:self_challenge_simple_dice/dice/quadruple_dice.dart';
import 'package:self_challenge_simple_dice/dice/quintuple_dice.dart';
import 'package:self_challenge_simple_dice/dice/triple_dice.dart';
import 'package:self_challenge_simple_dice/welcome_screen.dart';
import 'dice/single_dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        SingleDice.id: (context) => const SingleDice(),
        DoubleDice.id: (context) => const DoubleDice(),
        TripleDice.id: (context) => const TripleDice(),
        QuadrupleDice.id: (context) => const QuadrupleDice(),
        QuintupleDice.id: (context) => const QuintupleDice()
      },
    );
  }
}
