import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function _callback;

  Answer(this._answerText, this._callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
      child: RaisedButton(
        onPressed: _callback,
        child: Text(_answerText),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
