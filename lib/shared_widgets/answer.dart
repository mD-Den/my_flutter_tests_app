import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 80,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: selectHandler,
            child: Text(
              answerText,
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
