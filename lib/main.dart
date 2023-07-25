import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    int leftDiceCount = 1;
    int rightDiceCount = 1;

    void pressedHandler() {
      setState(() {
        leftDiceCount = Random().nextInt(6) + 1;
        rightDiceCount = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    pressedHandler();
                  },
                  child: Image.asset("images/dice$leftDiceCount.png"))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    pressedHandler();
                  },
                  child: Image.asset("images/dice$rightDiceCount.png")))
        ],
      ),
    );
  }
}
