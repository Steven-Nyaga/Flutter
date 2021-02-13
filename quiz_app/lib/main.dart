import 'package:flutter/material.dart';

//MAin executed immediately the app starts
// void main (){
//   //mandatory function
//   runApp(MyApp());
// }
//for function with only one exression
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  var questions = ['What\'s my Name', 'What timezone in Kenya', 'Who let the dogs out'];

  //Building a function/method
  void answerQuestoion(){
    questionIndex++;
    // print('Answer Chosen');
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
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              //for onPressed when the function is void just write the name of the function without
              //brakets. Coz with brackets it means we are returning somethig. And we cannot return
              //void
              onPressed: answerQuestoion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              //Another way of implementing fiunctions especially when you are not using them in many 
              //places (with only one argument) Btw arguments go in the brackets.
              onPressed: () => print('Answer Chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              //More than one argument
              onPressed: () {
                print('Answer Question');
              },
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: answerQuestoion,
            ),
          ],
        ),
      ),
    );
  }
}
