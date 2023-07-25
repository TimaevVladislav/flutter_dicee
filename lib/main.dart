import 'dart:math';

import 'package:flutter/material.dart';

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

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceCount++;
                    });
                  },
                  child: Image.asset("images/dice$leftDiceCount.png"))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightDiceCount++;
                    });
                  },
                  child: Image.asset("images/dice$rightDiceCount.png")))
        ],
      ),
    );
  }
}
