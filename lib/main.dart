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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieNumber = 1;
  int rightDieNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDieNumber = newDieFace();
      rightDieNumber = newDieFace();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: changeDiceFace,
              child: Image.asset('images/dice$leftDieNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: changeDiceFace,
              child: Image.asset('images/dice$rightDieNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  int newDieFace () {
    return Random().nextInt(5) + 1;
  }
}

