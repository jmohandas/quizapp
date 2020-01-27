import 'package:flutter/material.dart';

class ShowResult extends StatelessWidget {
  final Function resetQuiz;
  final int userScore;
  final int totalScore;

  ShowResult({
    this.resetQuiz,
    this.userScore,
    this.totalScore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(
            'You scored $userScore / $totalScore.',
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            onPressed: resetQuiz,
          ),
        )
      ],
    );
  }
}
