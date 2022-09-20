import 'package:cv/presenter/cv_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

  const textThemeDark = TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
    ),
  );

  const textThemeLigth = TextTheme(
    bodyText2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold
    ),
  );

ThemeData _escuridao = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    textTheme: textThemeDark,
    primaryColor: Colors.white
  );

ThemeData _luz = ThemeData(
    scaffoldBackgroundColor: Colors.grey[300],
    textTheme: textThemeLigth,
    primaryColor: Colors.black
  );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Currículo - Gabriel Augusto',
      theme: _luz,
      darkTheme: _escuridao,
      home: CVScreen(),
    );
  }
}
