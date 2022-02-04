import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/shared_widgets/result_test.dart';

import '../shared_widgets/process.dart';

class AreYouHappyTest extends StatefulWidget {
  const AreYouHappyTest({Key key}) : super(key: key);
  static String previewAreYouHappy = 'Тебе заебись? Или хуёво?';

  @override
  _AreYouHappyTestState createState() => _AreYouHappyTestState();
}

class _AreYouHappyTestState extends State<AreYouHappyTest> {
  final int numberTest = 2;
  final _questions = const [
    {
      'questionText':
          'Вы когда-нибудь вымещаете свое плохое настроение на других людях?',
      'answers': [
        {'text': 'Иногда', 'score': 1},
        {'text': 'Редко или никогда', 'score': 2},
        {'text': 'Достаточно часто', 'score': 0},
      ],
    },
    {
      'questionText':
          'Как часто бывает, что вам хочется стать кем-нибудь другим?',
      'answers': [
        {
          'text':
              'Не часто, но иногда мне кажется, что другим людям в жизни повезло больше, чем мне',
          'score': 1
        },
        {
          'text': 'Я никогда всерьез не хотел быть на месте другого человека',
          'score': 2
        },
        {
          'text': 'Мне часто приходилось мечтать стать кем-нибудь другим',
          'score': 0
        },
      ],
    },
    {
      'questionText': 'Верите ли вы в то, что родились под счастливой звездой?',
      'answers': [
        {
          'text': 'Возможно, мне повезло в жизни чуть больше, чем другим',
          'score': 1
        },
        {'text': 'Определенно, это так', 'score': 2},
        {'text': 'Нет', 'score': 0},
      ],
    },
    {
      'questionText':
          'Приходится ли вам чувствовать, что ваша жизнь зашла в тупик?',
      'answers': [
        {'text': 'Да, иногда', 'score': 1},
        {'text': 'Редко или никогда', 'score': 2},
        {
          'text': 'Да, я часто мучаюсь из-за того, что чувствую себя в тупике',
          'score': 0
        },
      ],
    },
    {
      'questionText':
          'Вам кажется, что вы упускаете предоставляемые вам возможности?',
      'answers': [
        {'text': 'Иногда', 'score': 1},
        {'text': 'Редко', 'score': 2},
        {'text': 'Регулярно', 'score': 0},
      ],
    },
    {
      'questionText':
          'Если бы вы могли на год полностью изменить свой образ жизни, вы бы это сделали?',
      'answers': [
        {'text': 'Возможно, при определенных обстоятельствах', 'score': 1},
        {'text': 'Я не думаю, что я так когда-нибудь поступлю', 'score': 2},
        {'text': 'Да, я бы воспользовался такой возможностью', 'score': 0},
      ],
    },
    {
      'questionText': 'Вы завидуете богатым и знаменитым?',
      'answers': [
        {'text': 'Иногда', 'score': 1},
        {'text': 'Редко или никогда', 'score': 2},
        {'text': 'Достаточно часто', 'score': 0},
      ],
    },
    {
      'questionText': 'Получаете ли вы удовольствие от вашей работы?',
      'answers': [
        {'text': 'В основном да, но не всегда', 'score': 1},
        {'text': 'Да', 'score': 2},
        {'text': 'В общем, нет', 'score': 0},
      ],
    },
    {
      'questionText':
          'Часто ли вы мечтаете уехать куда-нибудь в экзотические страны в отпуск, чтобы просто сбежать подальше от всего?',
      'answers': [
        {'text': 'Да, иногда', 'score': 1},
        {
          'text': 'Отпуск может быть приятным, но он мне не необходим в жизни',
          'score': 2
        },
        {'text': 'Да, часто', 'score': 0},
      ],
    },
    {
      'questionText':
          'Согласились бы вы на пластическую операцию, чтобы улучшить свою внешность?',
      'answers': [
        {'text': 'Возможно', 'score': 1},
        {'text': 'Нет', 'score': 2},
        {'text': 'Да', 'score': 0},
      ],
    },
    {
      'questionText':
          'Считаете ли вы, что проводите свое свободное время наилучшим образом?',
      'answers': [
        {
          'text':
              'Возможно, в свободное время у меня не так много возможностей, как мне хотелось бы',
          'score': 1
        },
        {'text': 'Да', 'score': 2},
        {'text': 'Нет, потому что у меня нет времени на отдых', 'score': 0},
      ],
    },
    {
      'questionText': 'Вы обычно хорошо спите ночью?',
      'answers': [
        {'text': 'Я стараюсь, но у меня не всегда это получается', 'score': 1},
        {'text': 'Да', 'score': 2},
        {'text': 'Обычно нет', 'score': 0},
      ],
    },
    {
      'questionText': 'Вы завидуете благосостоянию других людей?',
      'answers': [
        {'text': 'Иногда', 'score': 1},
        {'text': 'Редко или никогда', 'score': 2},
        {'text': 'Достаточно часто', 'score': 0},
      ],
    },
    {
      'questionText': 'Вам приходится испытывать муки совести?',
      'answers': [
        {'text': 'Да, иногда такое случается', 'score': 1},
        {'text': 'Редко или никогда', 'score': 2},
        {'text': 'Да, я часто страдаю из-за этого', 'score': 0},
      ],
    },
    {
      'questionText': 'Каким вы видите свое будущее?',
      'answers': [
        {'text': 'У меня есть на этот счет некоторые опасения', 'score': 1},
        {
          'text': 'Надеюсь, дела будут обстоять так же, как и сейчас',
          'score': 2
        },
        {
          'text':
              'Я надеюсь, будущее будет гораздо лучше, чем прошлое и настоящее',
          'score': 0
        },
      ],
    },
    {
      'questionText': 'Вы когда-нибудь страдали от комплекса неполноценности?',
      'answers': [
        {'text': 'Может быть, иногда', 'score': 1},
        {'text': 'Нет', 'score': 2},
        {'text': 'Да', 'score': 0},
      ],
    },
    {
      'questionText':
          'Как вы считаете, какое из следующих слов наиболее точно описывает вас?',
      'answers': [
        {'text': 'Уравновешенный', 'score': 1},
        {'text': 'Удовлетворенный', 'score': 2},
        {'text': 'Неугомонный', 'score': 0},
      ],
    },
    {
      'questionText': 'Удалось ли вам реализовать свои планы в жизни?',
      'answers': [
        {'text': 'Большинство уже реализовано', 'score': 1},
        {
          'text':
              'В настоящий момент у меня нет ни одного плана, который я хотел бы реализовать',
          'score': 2
        },
        {'text': 'Вовсе нет', 'score': 0},
      ],
    },
    {
      'questionText': 'Считаете ли вы, что у вас крепкая и любящая семья?',
      'answers': [
        {'text': 'Скорее да, чем нет', 'score': 1},
        {'text': 'Без всякого сомнения', 'score': 2},
        {'text': 'Пожалуй, нет', 'score': 0},
      ],
    },
    {
      'questionText': 'У вас легкий, беспечный подход к жизни?',
      'answers': [
        {
          'text':
              'Да, к большинству вещей я отношусь легко. Но все-таки в жизни есть и очень серьезные вещи, к которым нельзя относиться беспечно',
          'score': 1
        },
        {'text': 'Я стараюсь научиться воспринимать жизнь легко', 'score': 2},
        {'text': 'Я бы не назвал себя беспечным человеком', 'score': 0},
      ],
    },
    {
      'questionText': 'Вы берете от жизни все?',
      'answers': [
        {'text': 'Надеюсь, что так', 'score': 1},
        {'text': 'Я считаю, что да', 'score': 2},
        {'text': 'Я считаю, что нет', 'score': 0},
      ],
    },
    {
      'questionText':
          'Насколько вам легко отстраниться от проблем и расслабиться?',
      'answers': [
        {'text': 'В некоторых ситуациях это легко, в других — нет', 'score': 1},
        {'text': 'Легко', 'score': 2},
        {'text': 'Вовсе нелегко', 'score': 0},
      ],
    },
    {
      'questionText':
          'Как часто вам приходится расстраиваться из-за того, что хочется сделать больше, чем получается?',
      'answers': [
        {'text': 'Иногда', 'score': 1},
        {'text': 'Редко или никогда', 'score': 2},
        {'text': 'Почти все время', 'score': 0},
      ],
    },
    {
      'questionText':
          'Если мысленно сделать шаг в сторону и критически оценить собственную жизнь — что бы вы сказали?',
      'answers': [
        {
          'text':
              'В общем и целом я доволен жизнью, но все же чувствую, что мог бы добиться и большего',
          'score': 1
        },
        {
          'text':
              'Я считаю себя счастливчиком, ведь в моей жизни было больше взлетов, чем падений',
          'score': 2
        },
        {
          'text': 'Я зол на себя, потому что не смог сделать свою жизнь лучше',
          'score': 0
        },
      ],
    },
    {
      'questionText': 'Вы часто бываете довольны собой?',
      'answers': [
        {'text': 'Время от времени', 'score': 1},
        {'text': 'Зачастую', 'score': 2},
        {'text': 'Редко или никогда', 'score': 0},
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
        title: FittedBox(child: const Text('Тест \"Довольны ли Вы собой\"')),
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
