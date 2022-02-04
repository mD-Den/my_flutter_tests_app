import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/preview_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Тесты личности',
        theme: ThemeData(
          fontFamily: 'Quicksand',
          primarySwatch: Colors.cyan,

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.cyan,
              elevation: 5,
              onPrimary: Colors.white,
            ),
          ),
          textButtonTheme: TextButtonThemeData(
              style: ElevatedButton.styleFrom(
            primary: Colors.cyan,
          )),
          appBarTheme: AppBarTheme(
              toolbarTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                      headline6: TextStyle(
                    fontSize: 22,
                    fontFamily: 'SourceSerif',
                  ))
                  .bodyText2,
              titleTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                      headline6: TextStyle(
                          fontSize: 35,
                          fontFamily: 'SourceSerif',
                          fontWeight: FontWeight.bold))
                  .headline6),

          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSerif,'),
              ),
          // button: TextStyle(color: Colors.red)),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan)
              .copyWith(secondary: Colors.yellow),
        ),
        home: FirstRoute());
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Выбор теста',
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      body: Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //   image: AssetImage('assets/images/base_ad47c7e032.jpg'),
        //   fit: BoxFit.cover,
        // )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //Виджеты равным образом по всему экрану
          children: [
            Container(
              height: 70,
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: const Text(
                  'Шкала тревоги Бека',
                  style: TextStyle(
                    fontSize: 25,
                    // color: Color.fromRGBO(241, 134, 134, 0.32941176470588235),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute(1)),
                  );
                },
              ),
            ),
            Container(
              height: 70,
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: const Text(
                  'Довольны ли Вы собой',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute(2)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.thumb_up),
      ),
    );
  }
}
