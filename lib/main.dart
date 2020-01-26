import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppWithSate();
  }
}

class _QuizAppWithSate extends State<QuizApp> {
  final _questions = [
    {
      'questionText': 'Which mammal first reached earth\'s orbit alive?',
      'answers': ['Cat', 'Monkey', 'Dog', 'Human'],
    },
    {
      'questionText': 'What is the name of jewish new year?',
      'answers': ['Hanukkah', 'Kwanzaa', 'Yom kippur', 'Rosh Hashanah'],
    },
    {
      'questionText': 'What is the largest planet in our solar system?',
      'answers': ['Jupitor', 'Pluto', 'Saturn', 'Earth', 'Venus'],
    },
    {
      'questionText': 'War and Peace book was originally written in which language?',
      'answers': ['English', 'German', 'Russian', 'French'],
    },
    {
      'questionText': 'What temperature is the same in Celsius and Fahrenheit?',
      'answers': ['0', '-40', '100', '-60', '63'],
    },
  ];

  var _questionIndex = 0;

  void _answerButtonAction() {
    setState(() {
      _questionIndex += 1;
    });
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
            Question(_questions[_questionIndex]['questionText']),
            ...((_questions[_questionIndex]['answers'] as List).map((eachAnswer) {
              return Answer(eachAnswer, _answerButtonAction);
            }))
          ],
        ),
      ),
    );
  }
}
