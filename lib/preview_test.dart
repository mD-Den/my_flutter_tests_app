import 'package:flutter/material.dart';
import './test_beka.dart';

class SecondRoute extends StatelessWidget {

  final String _description = 'Данный тест содержит наиболее распространенные симптомы тревоги. Пожалуйста, внимательно изучите каждый пункт. Отметьте, насколько Вас беспокоил каждый из этих симптомов в течение прошедшей недели, включая сегодняшний день:\n1) Совсем не беспокоил\n2) Слегка - не слишком меня беспокоил\n 3) Умеренно - это было неприятно, но я мог(ла) это переносить\n 4) Очень сильно - я с трудом мог(ла) это выносить';

  const SecondRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Описание теста'),
        ),
        body: Center(

          child: Column(
            children: [
              Text(_description, style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  height: 1.2)),
              ElevatedButton(

                child: const Text('Начать тест'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScreenTest()),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Назад!'),
              ),
            ],
          ),
        ));
  }
}
