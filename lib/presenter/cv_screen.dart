import 'dart:convert';
import 'dart:html';

import 'package:cv/presenter/widgets/education_info.dart';
import 'package:cv/presenter/widgets/hability.dart';
import 'package:cv/presenter/widgets/languages_rating.dart';
import 'package:cv/presenter/widgets/personal_infos.dart';
import 'package:cv/presenter/widgets/timeline.dart';
import 'package:cv/presenter/widgets/timeline_courses.dart';
import 'package:cv/presenter/widgets/timeline_jobs.dart';
import 'package:cv/presenter/widgets/timeline_personal_xp.dart';
import 'package:cv/presenter/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'widgets/line_icon_hability.dart';


class CVScreen extends StatelessWidget {
  const CVScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<State<StatefulWidget>> _printKey = GlobalKey();

    void _printScreen() {
    Printing.layoutPdf(onLayout: (PdfPageFormat format) async {
      final doc = pw.Document();

      final image = await WidgetWraper.fromKey(
        key: _printKey,
        pixelRatio: 2.0,
      );

      doc.addPage(pw.Page(
          pageFormat: format,
          build: (pw.Context context) {
            return pw.Center(
              child: pw.Expanded(
                child: pw.Image(image),
              ),
            );
          }));

      return doc.save();
    });
  }

    return Scaffold(
      body: RepaintBoundary(
        child: SingleChildScrollView(
          key: _printKey,
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      child: CircleAvatar(
                        radius: 120,
                        backgroundColor: Colors.redAccent,
                        child: CircleAvatar(
                          radius: 115,
                          backgroundImage: NetworkImage('https://scontent.fsdu5-1.fna.fbcdn.net/v/t1.6435-9/43574628_2028090100586600_714769715825737728_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHR9vSNaC_FTfFDYkN8yAoZZFZlUmP5LRBkVmVSY_ktELJZbdZm0nLMUz-gAuBACXNJOVyqdToeJUWl-avoro-b&_nc_ohc=ZCkgeNJKeCMAX9kyJ2X&_nc_ht=scontent.fsdu5-1.fna&oh=00_AT8AuyK2G4EmREDqW_CB6GT1SuqwFnHs0beDfXgqG2emuA&oe=633FA731'),
                        ) 
                      ),
                    ),
                    const SizedBox(width: 100),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Gabriel ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0)),
                          TextSpan(text: 'Augusto de Deus', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.redAccent)),
                          TextSpan(text: '\nDesenvolvedor', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.black)),
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
                              child: TitleWithBorderBottom('HABILIDADES'),
                            ),
                            LineIconHabilty(Hability('https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/480px-Unofficial_JavaScript_logo_2.svg.png', 'Javascript')),
                            LineIconHabilty(Hability('https://cdn-icons-png.flaticon.com/512/5968/5968381.png', 'Typescript')),
                            LineIconHabilty(Hability('https://img.icons8.com/color/480/dart.png', 'Dart')),
                            LineIconHabilty(Hability('https://cdn-icons-png.flaticon.com/512/226/226777.png', 'Java')),
                            LineIconHabilty(Hability('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX-AfZjQww5xQHRqqRIFGqG0I9NWVdeZiiXA&usqp=CAU', 'Flutter')),
                            LineIconHabilty(Hability('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/2300px-React-icon.svg.png', 'ReactJS e Native')),
                            LineIconHabilty(Hability('https://www.gstatic.com/devrel-devsite/prod/v17bab36d69ae03fcc913f41eaedd7c01378ceed3d66f27cd213f7054697e46ba/firebase/images/touchicon-180.png', 'Firebase')),
                            LineIconHabilty(Hability('https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/events/spring-boot-1_5zDxm9B.jpg', 'Spring boot')),
                            LineIconHabilty(Hability('data:image/png;base64,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', 'HTML')),
                            LineIconHabilty(Hability('https://cdn-icons-png.flaticon.com/512/888/888847.png', 'CSS')),
                            LineIconHabilty(Hability('https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Kotlin_Icon.svg/2048px-Kotlin_Icon.svg.png', 'Kotlin')),
                            LineIconHabilty(Hability('data:image/png;base64,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', 'Swift')),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: TitleWithBorderBottom('TO PDF'),
                            ),
                            GestureDetector(
                              child: Container(width: 80, height: 80, color: Colors.black,),
                              onTap: _printScreen,
                            )
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
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TitleWithBorderBottom('EXPERIÊNCIAS PESSOAIS'),
                            ),
                            TimelinePersonalXP()
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}