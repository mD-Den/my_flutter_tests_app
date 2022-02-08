import 'package:flutter/material.dart';

import '../main.dart';

class RestartTest extends StatelessWidget {
  const RestartTest(this.resultHandler, {Key key}) : super(key: key);

  final Function resultHandler;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          child: ElevatedButton(
              onPressed: resultHandler,
              child: Container(
                  height: 50,
                  width: 200,
                  child: Center(
                      child: const Text(
                    'Начать сначала???',
                    style: TextStyle(fontSize: 25),
                  )))),
        ),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          child: ElevatedButton(
            child: Container(
              height: 50,
              width: 200,
              child: Center(
                child: const Text(
                  'На главную',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FirstRoute()),
              );
            },
          ),
        ),
      ],
    );
  }
}
