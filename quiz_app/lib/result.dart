import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function quizRestart;

  Result(this.result, this.quizRestart);

  String get resultPhrase {
    var resultText = 'You did it';
    if (result == 30) {
      resultText = 'Amazing';
    } else if (result < 30 && result > 20) {
      resultText = 'You tried';
    } else if (result < 20) {
      resultText = 'Gerr Arra here men';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            color: Colors.cyan,
            onPressed: quizRestart,
          )
        ],
      ),
    );
  }
}
