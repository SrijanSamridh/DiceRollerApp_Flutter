import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice Roller'),
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void shuffleDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                onPressed: () {
                  shuffleDice();
                }, // Anonymous Function (voidCallback)
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )),
          // SafeArea(
          //   child: Align(
          //     alignment: FractionalOffset.bottomCenter,
          //     child: FloatingActionButton.extended(
          //       onPressed: () {
          //          shuffleDice();
          //       },
          //       icon: const Icon(Icons.assistant_navigation),
          //       label: const Text('Shuffle'),
          //       backgroundColor: Colors.redAccent,
          //     ),
          //   ),
          // ),
          Expanded(
            child: TextButton(
              onPressed: () {
                shuffleDice();
              }, // Anonymous Function (voidCallback)
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

