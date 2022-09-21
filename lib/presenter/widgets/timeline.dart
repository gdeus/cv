import 'package:cv/presenter/widgets/education_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget CustomTimeline(){
  return Column(
    children: [
      Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.redAccent
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "07/2013",
            ),
          )
        ],
      ),
      Container(
        margin: const EdgeInsets.only(left: 5.5),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(width: 3, color: Get.theme.primaryColor)
          )
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: EducationInfo('Universidade Tecnológica Federal do Paraná', 'Ciência da Computação', 'Bacharel')))
          ],
        ),
      ),
      Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.redAccent
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "11/2019",
            ),
          )
        ],
      ),
      Container(
        margin: const EdgeInsets.only(left: 5.5),
        height: 10,
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(width: 3, color: Get.theme.primaryColor)
          )
        ),
      ),
      Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.redAccent
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "02/2020",
            ),
          )
        ],
      ),
      Container(
        margin: const EdgeInsets.only(left: 5.5),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(width: 3, color: Get.theme.primaryColor)
          )
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: EducationInfo('Unigá - Centro Universitário', 'Docência do Ensino Superior', 'Pós Grauduado')))
          ],
        ),
      ),
      Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.redAccent
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "11/2020",
            ),
          )
        ],
      ),
    ],
  );
}

