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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              print('Activated Left One.');
            }, // Anonymous Function (voidCallback)
            child: Image.asset('images/dice1.png'),
          )),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Activated Right One.');
              }, // Anonymous Function (voidCallback)
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
