import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceCount = 1;
  var rightDiceCount = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceCount = Random().nextInt(6) + 1;
                  rightDiceCount = Random().nextInt(6) + 1;
                  ;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$leftDiceCount.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceCount = Random().nextInt(6) + 1;
                  rightDiceCount = Random().nextInt(6) + 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$rightDiceCount.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
