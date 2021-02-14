import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

//MAin executed immediately the app starts
// void main (){
//   //mandatory function
//   runApp(MyApp());
// }
//for function with only one exression
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//_ turns a class into private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore =0;

  var questions = [
    {
      'questionText': 'What\'s my Name',
      'answers': [
        {'text': 'Steve', 'score': 10},
        {'text': 'John', 'score': 0},
        {'text': 'Max', 'score': 0},
        {'text': 'Dan', 'score': 0}
      ]
    },
    {
      'questionText': 'What timezone in Kenya',
      'answers': [
        {'text': 'GMT', 'score': 0},
        {'text': 'EAT', 'score': 10},
        {'text': 'UTC', 'score': 0},
        {'text': 'AST', 'score': 0}
      ]
    },
    {
      'questionText': 'Who let the dogs out',
      'answers': [
        {'text': 'No Idea', 'score': 0},
        {'text': 'Shaggy', 'score': 0},
        {'text': 'Baha Men', 'score': 10},
        {'text': 'Einstein', 'score': 0}
      ]
    },
  ];

  void _resetQuiz(){
    setState(() {
          _questionIndex = 0;
          _totalScore = 0;
        });
  }

  //Building a function/method
  void _answerQuestoion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  //build takes argument context
  //overide is just a decorater provided by flutter that makes code clearer and cleaner
  @override
  Widget build(BuildContext context) {
    //home is the core widget
    //Scafold is like the main/base widget
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First'),
        ),
        //to add many widgets together we use a container, column or row
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestin: _answerQuestoion,
                questions: questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
