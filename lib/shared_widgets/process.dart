import 'package:flutter/material.dart';

import '../../shared_widgets/answer.dart';
import 'question.dart';

class Process extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Process({this.questions, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          child: Question(
            questions[questionIndex]['questionText'],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Container(
            padding: const EdgeInsets.all(8.0),
            child:
                Answer(() => answerQuestion(answer['score']), answer['text']),
          );
        }).toList()
      ],
    );
  }
}
