import 'package:flutter/material.dart';

import './showQuestion.dart';
import './showResult.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppWithState();
  }
}

class _QuizAppWithState extends State<QuizApp> {
  static final  _scoreForCorrectAnswer = 10;
  final _questions = [
    {
      'questionText': 'Which mammal first reached earth\'s orbit alive?',
      'answers': [
        {
          'text': 'Cat',
          'score': 0,
        },
        {
          'text': 'Monkey',
          'score': 0,
        },
        {
          'text': 'Dog',
          'score': _scoreForCorrectAnswer,
        },
        {
          'text': 'Human',
          'score': 0,
        },
      ],
    },
    {
      'questionText': 'What is the name of jewish new year?',
      'answers': [
        {
          'text': 'Hanukkah',
          'score': 0,
        },
        {
          'text': 'Kwanzaa',
          'score': 0,
        },
        {
          'text': 'Yom kippur',
          'score': 0,
        },
        {
          'text': 'Rosh Hashanah',
          'score': _scoreForCorrectAnswer,
        },
      ],
    },
    {
      'questionText': 'What is the largest planet in our solar system?',
      'answers': [
        {
          'text': 'Jupitor',
          'score': _scoreForCorrectAnswer,
        },
        {
          'text': 'Pluto',
          'score': 0,
        },
        {
          'text': 'Saturn',
          'score': 0,
        },
        {
          'text': 'Earth',
          'score': 0,
        },
        {
          'text': 'Venus',
          'score': 0,
        },
      ],
    },
    {
      'questionText':
          'War and Peace book was originally written in which language?',
      'answers': [
        {
          'text': 'English',
          'score': 0,
        },
        {
          'text': 'German',
          'score': 0,
        },
        {
          'text': 'Russian',
          'score': _scoreForCorrectAnswer,
        },
        {
          'text': 'French',
          'score': 0,
        },
      ],
    },
    {
      'questionText': 'What temperature is the same in Celsius and Fahrenheit?',
      'answers': [
        {
          'text': '0',
          'score': 0,
        },
        {
          'text': '-40',
          'score': _scoreForCorrectAnswer,
        },
        {
          'text': '100',
          'score': 0,
        },
        {
          'text': '20',
          'score': 0,
        },
        {
          'text': '-60',
          'score': 0,
        },
      ],
    },
  ];

  var _questionIndex = 0;
  var _userScored = 0;

  void _answerButtonAction(score) {
    _userScored += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _userScored = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? ShowQuestion(
                questions: _questions,
                questionIndex: _questionIndex,
                answerButtonAction: _answerButtonAction,
              )
            : ShowResult(
              resetQuiz: _restartQuiz,
              userScore: _userScored,
              totalScore: _questions.length * _scoreForCorrectAnswer,
            ),
      ),
    );
  }
}
