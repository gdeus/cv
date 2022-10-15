import 'package:cv/domain/entities/cv_info.dart';
import 'package:cv/presenter/cv_screen_controller.dart';
import 'package:flutter/material.dart';

import '../widgets/hability.dart';
import '../widgets/languages_rating.dart';
import '../widgets/line_icon_hability.dart';
import '../widgets/personal_infos.dart';
import '../widgets/timeline.dart';
import '../widgets/timeline_courses.dart';
import '../widgets/timeline_jobs.dart';
import '../widgets/timeline_personal_xp.dart';
import '../widgets/title.dart';
import 'package:get/get.dart';

Widget Mobile(BuildContext context, CVInfo cvInfo) {
  final CVScreenController c = Get.put(CVScreenController());
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          child: const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.redAccent,
              child: CircleAvatar(
                radius: 55,
                backgroundImage: NetworkImage(
                    'https://scontent.fsdu5-1.fna.fbcdn.net/v/t1.6435-9/43574628_2028090100586600_714769715825737728_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHR9vSNaC_FTfFDYkN8yAoZZFZlUmP5LRBkVmVSY_ktELJZbdZm0nLMUz-gAuBACXNJOVyqdToeJUWl-avoro-b&_nc_ohc=ZCkgeNJKeCMAX9kyJ2X&_nc_ht=scontent.fsdu5-1.fna&oh=00_AT8AuyK2G4EmREDqW_CB6GT1SuqwFnHs0beDfXgqG2emuA&oe=633FA731'),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.sunny,
            ),
            Switch(
              onChanged: (value){
                c.changeTheme(value);
                Get.changeThemeMode(c.isLightTheme.value ? ThemeMode.dark : ThemeMode.light);
                print(c.isLightTheme.value);
              },
              value: c.isLightTheme.value, 
            ),
            const Icon(
              Icons.brightness_2_outlined
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                const TextSpan(
                    text: 'Gabriel ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        color: Colors.redAccent)),
                TextSpan(
                    text: 'Augusto de Deus',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        color: context.theme.primaryColor)),
                TextSpan(
                    text: '\nDesenvolvedor',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        color: context.theme.primaryColor)),
              ],
            ),
          ),
        ),
        TitleWithBorderBottom('CONTATO'),
        PersonalInfos('Nome', 'Gabriel Augusto de Deus'),
        PersonalInfos('Celular', '(45) 99837-2384'),
        PersonalInfos('E-mail', 'dedeus.gabriel@gmail.com'),
        PersonalInfos('Cidade', 'São Miguel do Iguaçu - PR'),
        PersonalInfos('Estado Civil', 'Solteiro'),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 8.0),
          child: TitleWithBorderBottom('IDIOMAS'),
        ),
         ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: cvInfo.languages.length,
            itemBuilder: (BuildContext context, int index) {
              return LanguagesRating(cvInfo.languages[index]);
          }),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 8.0),
          child: TitleWithBorderBottom('HABILIDADES'),
        ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: cvInfo.habilitys.length,
            itemBuilder: (BuildContext context, int index) {
              return LineIconHabilty(cvInfo.habilitys[index]);
          }),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 8.0),
          child: TitleWithBorderBottom('EDUCAÇÃO'),
        ),
        CustomTimeline(),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 15.0),
          child: TitleWithBorderBottom('CURSOS'),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: cvInfo.courses.length,
          itemBuilder: (BuildContext context, int index) {
            return TimelineCourses(cvInfo.courses[index]);
        }),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 15.0),
          child: TitleWithBorderBottom('EXPERIÊNCIAS'),
        ),
        TimelineJobs(cvInfo.expirences),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: TitleWithBorderBottom(
              'EXPERIÊNCIAS PESSOAIS'),
        ),
        TimelinePersonalXP()
      ],
    ),
  );
}
