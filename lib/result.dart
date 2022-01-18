import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;

  const Result(this.resultScore, this.resultHandler, {Key key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 9) {
      resultText = 'У Вас отсутствует тревога';
    } else if (resultScore <= 21) {
      resultText = 'У Вас незначительный уровень тревоги';
    } else if (resultScore <= 35) {
      resultText = 'У Вас средний уровень тревоги';
    } else {
      resultText = 'У Вас очень высокий уровень тревоги';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: resultHandler, child: const Text('Начать сначала?')),
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text('На главную'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstRoute()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
