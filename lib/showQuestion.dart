import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class ShowQuestion extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerButtonAction;

  ShowQuestion({
    this.questions,
    this.questionIndex,
    this.answerButtonAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...((questions[questionIndex]['answers'] as List).map((eachAnswer) {
          return Answer(
            eachAnswer['text'],
            () => answerButtonAction(eachAnswer['score']),
          );
        }))
      ],
    );
  }
}
