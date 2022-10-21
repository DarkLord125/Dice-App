import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: const dice(),
      ),
    ),
  );
}

class dice extends StatefulWidget{
  const dice({Key? key}) : super(key:key);

  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dice> {
  int left_dice = 1;
  @override
  Widget build(BuildContext context){
    return Center(
    child: Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                left_dice = Random().nextInt(6) +1;
              });
            },
            child: Image.asset("images/dice$left_dice.png"),
    ),
    ),
        ],
    ),
    );
  }
}