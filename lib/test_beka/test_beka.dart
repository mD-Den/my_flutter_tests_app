import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/shared_widgets/result_test.dart';

import '../shared_widgets/process.dart';

class BekaTest extends StatefulWidget {
  const BekaTest({Key key}) : super(key: key);
  static String previewBeka =
      'Данный тест содержит наиболее распространенные симптомы тревоги. Пожалуйста, внимательно изучите каждый пункт. Отметьте, насколько Вас беспокоил каждый из этих симптомов в течение прошедшей недели, включая сегодняшний день:\n1) Совсем не беспокоил\n2) Слегка - не слишком меня беспокоил\n 3) Умеренно - это было неприятно, но я мог(ла) это переносить\n 4) Очень сильно - я с трудом мог(ла) это выносить';

  @override
  _BekaTestState createState() => _BekaTestState();
}

class _BekaTestState extends State<BekaTest> {
  final int numberTest = 1;
  final _questions = const [
    {
      'questionText': 'Ощущение онемения или покалывания в теле',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Ощущение жара',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Дрожь в ногах',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Неспособность расслабиться',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Страх, что произойдет самое плохое',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Головокружение или ощущение легкости в голове',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Ускоренное сердцебиение',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Неустойчивость',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Ощущение ужаса',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Нервозность',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Дрожь в руках',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Ощущение удушья',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Шаткость походки',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Страх утраты контроля',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Затрудненность дыхания',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Страх смерти',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Испуг',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Желудочно-кишечные расстройства',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Обмороки',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Прилив крови к лицу',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
    {
      'questionText': 'Усиленное потоотделение (не связанное с жарой)',
      'answers': [
        {'text': 'Совсем не беспокоил', 'score': 0},
        {'text': 'Слегка. Не слишком меня беспокоил', 'score': 1},
        {
          'text': 'Умеренно. Это было неприятно, но я мог это переносить',
          'score': 2
        },
        {'text': 'Очень сильно. Я с трудом мог это выносить', 'score': 3}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetProcess() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: const Text(
            'Тест "Шкала Тревоги Бека"',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: _questionIndex < _questions.length
                  ? Process(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    )
                  : ResultTest(_totalScore, _resetProcess, numberTest),
            ),
          ],
        ),
      ),
    );
  }
}