import 'package:cv/presenter/widgets/personal_infos.dart';
import 'package:flutter/material.dart';

Widget EducationInfo(String local, String name, String title){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      PersonalInfos('Curso', '$title em $name'),
      PersonalInfos('Local', local),
    ],
  );
}