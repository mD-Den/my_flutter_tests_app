import 'package:flutter/material.dart';

import 'test_are_you_happy/test_are_you_happy.dart';
import 'test_beka/test_beka.dart';

class SecondRoute extends StatelessWidget {
  final int number;

  SecondRoute(this.number);

  var description;

  String choiceDescription() {
    switch (number) {
      case 1:
        description = '${BekaTest.previewBeka}';
        break;
      case 2:
        description = '${AreYouHappyTest.previewAreYouHappy}';
        break;
    }
    return description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(child: FittedBox(child: const Text('Описание теста'))),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Text(choiceDescription(),
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.2)),
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink),
                  overlayColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.purple)),
              child: const Text(
                'Начать тест',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                switch (number) {
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BekaTest()),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AreYouHappyTest()),
                    );
                }
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Назад!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
