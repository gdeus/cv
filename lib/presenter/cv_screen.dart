import 'package:cv/presenter/widgets/education_info.dart';
import 'package:cv/presenter/widgets/languages_rating.dart';
import 'package:cv/presenter/widgets/personal_infos.dart';
import 'package:cv/presenter/widgets/timeline.dart';
import 'package:cv/presenter/widgets/title.dart';
import 'package:flutter/material.dart';


class CVScreen extends StatelessWidget {
  const CVScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Column(
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
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 40,),
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWithBorderBottom('Educação'),
                            CustomTimeline(),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}