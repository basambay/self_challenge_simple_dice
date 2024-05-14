import 'package:flutter/material.dart';
import 'package:self_challenge_simple_dice/dice/double_dice.dart';
import 'package:self_challenge_simple_dice/dice/quadruple_dice.dart';
import 'package:self_challenge_simple_dice/dice/quintuple_dice.dart';
import 'package:self_challenge_simple_dice/dice/single_dice.dart';
import 'package:self_challenge_simple_dice/dice/triple_dice.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Let\'s Play Dice',
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 60.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, SingleDice.id);
                  },
                  child: CardTitle(
                    name: 'Single Dice',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 60.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, DoubleDice.id);
                  },
                  child: CardTitle(name: 'Double Dice'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 60.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, TripleDice.id);
                  },
                  child: CardTitle(name: 'Triple Dice'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 60.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, QuadrupleDice.id);
                    },
                    child: CardTitle(name: 'Quadruple Dice')),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 60.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, QuintupleDice.id);
                  },
                  child: CardTitle(name: 'Quintuple Dice'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardTitle extends StatelessWidget {
  String name;
  TextStyle txtStyle;
  CardTitle(
      {super.key, required this.name,
      this.txtStyle = const TextStyle(color: Colors.white, fontSize: 20.0)});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: txtStyle,
    );
  }
}
