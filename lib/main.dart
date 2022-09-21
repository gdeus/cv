import 'package:cv/presenter/cv_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

ThemeData _escuridao = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
  primaryColor: Colors.white
);

ThemeData _luz = ThemeData(
    scaffoldBackgroundColor: Colors.grey[300],
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    ),
    primaryColor: Colors.black
  );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

