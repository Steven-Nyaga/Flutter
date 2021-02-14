import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFunction;
  final String answerText;

  Answer(this.answerFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: RaisedButton(
        color: Colors.cyan,
        child: Text(answerText),
        onPressed: answerFunction,
      ),
    );
  }
}
