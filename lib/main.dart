import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  final _questions = [
    'Where was the first flutter version was unveiled?',
    'Who invented the dart programming language?',
    'Which company is promoting dart and flutter development?',
    'What is the preffered programming language for flutter?',
  ];
  var questionIndex = 0;
  void answerButtonPressed() {
    questionIndex += 1;
    print('User answered question');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Quiz'),
          ),
          body: Column(
            children: <Widget>[
              Text(
                _questions[questionIndex],
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerButtonPressed,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerButtonPressed,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: answerButtonPressed,
              ),
              RaisedButton(
                child: Text('Answer 4'),
                onPressed: answerButtonPressed,
              ),
            ],
          )),
    );
  }
}
