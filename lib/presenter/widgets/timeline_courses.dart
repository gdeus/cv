import 'package:cv/presenter/widgets/education_info.dart';
import 'package:flutter/material.dart';

Widget TimelineCourses(String description, bool last){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
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
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              description,
            ),
          ),
        ],
      ),
      !last ? 
      Padding(
        padding: const EdgeInsets.only(left: 5.5),
        child: Container(
          width: 3,
          height: 20,
        ),
      ) : 
      Container()
    ],
  );
}

