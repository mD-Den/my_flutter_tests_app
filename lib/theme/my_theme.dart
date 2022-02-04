import 'package:flutter/material.dart';

class MyTheme extends StatelessWidget {
  const MyTheme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      // primaryColor: Color.fromRGBO(245, 118, 168, 1),
      primarySwatch: Colors.cyan,
      // accentColor: Colors.yellow,
      fontFamily: 'SourceSerif4',
      textTheme: ThemeData.light().textTheme.copyWith(
          subtitle1: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSerif4',
            fontSize: 18,
          ),
          button: TextStyle(color: Colors.white)),
      appBarTheme: AppBarTheme(
        toolbarTextStyle: ThemeData.light()
            .textTheme
            .copyWith(
              headline6: TextStyle(
                fontFamily: 'SourceSerif',
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.cyan,
              ),
            )
            .bodyText2,
        titleTextStyle: ThemeData.light()
            .textTheme
            .copyWith(
                headline6: TextStyle(
              fontFamily: 'SourceSerif',
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ))
            .headline6,
      ),

      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan)
          .copyWith(secondary: Colors.yellow),
    );
  }
}
