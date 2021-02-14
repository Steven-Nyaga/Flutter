import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String currentQuestion;
  Question(this.currentQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        currentQuestion,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
