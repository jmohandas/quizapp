import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  final _questions = [
    'Where was the first verion of flutter unveiled?',
    'Which company is supporting flutter development?',
    'Which programming language is used for flutter development?',
  ];
  var _questionIndex = 0;

  void answerButtonAction() {
    _questionIndex += 1;
    print('The question index -> $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              _questions[_questionIndex],
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            RaisedButton(
              onPressed: answerButtonAction,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: answerButtonAction,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: answerButtonAction,
              child: Text('Answer 3'),
            ),
            RaisedButton(
              onPressed: answerButtonAction,
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
