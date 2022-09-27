import 'package:cv/presenter/cv_screen.dart';
import 'package:cv/presenter/cv_screen_bindings.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'domain/usecase/get_cv_usecase.dart';
import 'external/get_cv_datasource.dart';
import 'infra/repositories/get_cv_repository_impl.dart';

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
      initialBinding: BindingsBuilder((){
        Get.lazyPut<GetCVUsecaseImpl>((){
          final Dio dio = Dio();
          final GetCVDatasourceImpl datasource = GetCVDatasourceImpl(dio);
          final GetCVRepositoryImpl repository = GetCVRepositoryImpl(datasource);
          return GetCVUsecaseImpl(repository);
        });
      }),
    );
  }
}

