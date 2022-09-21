import 'package:cv/presenter/cv_screen_controller.dart';
import 'package:cv/presenter/mobile/test.dart';
import 'package:cv/presenter/widgets/hability.dart';
import 'package:cv/presenter/widgets/languages_rating.dart';
import 'package:cv/presenter/widgets/personal_infos.dart';
import 'package:cv/presenter/widgets/timeline.dart';
import 'package:cv/presenter/widgets/timeline_courses.dart';
import 'package:cv/presenter/widgets/timeline_jobs.dart';
import 'package:cv/presenter/widgets/timeline_personal_xp.dart';
import 'package:cv/presenter/widgets/title.dart';
import 'package:flutter/material.dart';
import 'widgets/line_icon_hability.dart';
import 'package:get/get.dart';

class CVScreen extends StatelessWidget {
  final CVScreenController c = Get.put(CVScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 900) {
            return Obx(() => Mobile(context));
          }
          return Obx(
            () => Padding(
              padding: const EdgeInsets.all(80.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Row(
                  children: [
                    const SizedBox(
                      child: CircleAvatar(
                          radius: 120,
                          backgroundColor: Colors.redAccent,
                          child: CircleAvatar(
                            radius: 115,
                            backgroundImage: NetworkImage(
                                'https://scontent.fsdu5-1.fna.fbcdn.net/v/t1.6435-9/43574628_2028090100586600_714769715825737728_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHR9vSNaC_FTfFDYkN8yAoZZFZlUmP5LRBkVmVSY_ktELJZbdZm0nLMUz-gAuBACXNJOVyqdToeJUWl-avoro-b&_nc_ohc=ZCkgeNJKeCMAX9kyJ2X&_nc_ht=scontent.fsdu5-1.fna&oh=00_AT8AuyK2G4EmREDqW_CB6GT1SuqwFnHs0beDfXgqG2emuA&oe=633FA731'),
                          )),
                    ),
                    const SizedBox(width: 100),
                    RichText(
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TitleWithBorderBottom('CONTATO'),
                            ),
                            PersonalInfos('Nome', 'Gabriel Augusto de Deus'),
                            PersonalInfos('Celular', '(45) 99837-2384'),
                            PersonalInfos('E-mail', 'dedeus.gabriel@gmail.com'),
                            PersonalInfos(
                                'Cidade', 'São Miguel do Iguaçu - PR'),
                            PersonalInfos('Estado Civil', 'Solteiro'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TitleWithBorderBottom('IDIOMAS'),
                            ),
                            LanguagesRating('PORTUGUÊS', 5),
                            LanguagesRating('INGLÊS', 3),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TitleWithBorderBottom('HABILIDADES'),
                            ),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/flutter.png',
                                'Flutter')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/dart.png',
                                'Dart')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/javascript--v1.png',
                                'Javascript')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/fluency/48/000000/typescript.png',
                                'Typescript')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/react-native.png',
                                'ReactJS e Native')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/html-5--v1.png',
                                'HTML')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/dusk/48/000000/css3.png',
                                'CSS')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/java-coffee-cup-logo--v1.png',
                                'Java')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/kotlin.png',
                                'Kotlin')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/android-os.png',
                                'Android')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/firebase.png',
                                'Firebase')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/office/48/000000/spring-logo.png',
                                'Spring boot')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/color/48/000000/swift.png',
                                'Swift')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/ios-filled/50/000000/ios-logo.png',
                                'iOS')),
                            LineIconHabilty(Hability(
                                'https://img.icons8.com/ios-filled/50/000000/ios-logo.png',
                                c.isLightTheme.toString())),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TitleWithBorderBottom('TO PDF'),
                            ),
                            GestureDetector(
                              child: Container(
                                width: 80,
                                height: 80,
                                color: Colors.black,
                              ),
                              onTap: () {
                                Get.changeThemeMode(c.isLightTheme.value
                                    ? ThemeMode.dark
                                    : ThemeMode.light);
                                if (c.isLightTheme.isTrue) {
                                  print('é darkmode');
                                } else {
                                  print('não é');
                                }
                                print(Get.theme.primaryColor);
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: [
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
                            TimelineCourses(
                                'Flutter: Aprendendo tudo sobre design - Prof: Jacob Moura - Plataforma: Udemy.',
                                false),
                            TimelineCourses(
                                'Criação de Apps Android e iOS com Flutter - Prof: Daniel Ciolfi - Plataforma: Udemy.',
                                false),
                            TimelineCourses(
                                'Dart Lang do básico ao avançado - Prof: Fernando Martins - Plataforma: Udemy.',
                                true),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: TitleWithBorderBottom('EXPERIÊNCIAS'),
                            ),
                            TimelineJobs(),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TitleWithBorderBottom(
                                  'EXPERIÊNCIAS PESSOAIS'),
                            ),
                            TimelinePersonalXP()
                          ],
                        ),
                      ),
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
                )
              ]),
            ),
          );
        }),
      ),
    );
  }
}
