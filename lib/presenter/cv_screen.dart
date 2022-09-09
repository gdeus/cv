import 'package:cv/presenter/widgets/education_info.dart';
import 'package:cv/presenter/widgets/languages_rating.dart';
import 'package:cv/presenter/widgets/personal_infos.dart';
import 'package:cv/presenter/widgets/timeline.dart';
import 'package:cv/presenter/widgets/timeline_courses.dart';
import 'package:cv/presenter/widgets/timeline_jobs.dart';
import 'package:cv/presenter/widgets/title.dart';
import 'package:flutter/material.dart';


class CVScreen extends StatelessWidget {
  const CVScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const  [
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text('photo'),
                    ),
                  ),
                  Text(
                    "Gabriel de Deus\nDesenvolvedor", 
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0
                    ),  
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TitleWithBorderBottom('CONTATO'),
                        ),
                        PersonalInfos('Nome', 'Gabriel Augusto de Deus'),
                        PersonalInfos('Celular', '(45) 99837-2384'),
                        PersonalInfos('E-mail', 'dedeus.gabriel@gmail.com'),
                        PersonalInfos('Cidade', 'São Miguel do Iguaçu - PR'),
                        PersonalInfos('Estado Civil', 'Solteiro'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TitleWithBorderBottom('IDIOMAS'),
                        ),
                        LanguagesRating('PORTUGUÊS', 5),
                        LanguagesRating('INGLÊS', 3),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TitleWithBorderBottom('CONQUISTAS'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40,),
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TitleWithBorderBottom('EDUCAÇÃO'),
                        ),
                        CustomTimeline(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: TitleWithBorderBottom('CURSOS'),
                        ),
                        TimelineCourses('Flutter: Aprendendo tudo sobre design - Prof: Jacob Moura - Plataforma: Udemy.', false),
                        TimelineCourses('Criação de Apps Android e iOS com Flutter - Prof: Daniel Ciolfi - Plataforma: Udemy.', false),
                        TimelineCourses('Dart Lang do básico ao avançado - Prof: Fernando Martins - Plataforma: Udemy.', true),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: TitleWithBorderBottom('EXPERIÊNCIAS'),
                        ),
                        TimelineJobs(),
                      ],
                    ),
                  ),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}