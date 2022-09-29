import 'package:cv/domain/entities/course.dart';
import 'package:cv/presenter/widgets/education_info.dart';
import 'package:flutter/material.dart';

Widget TimelineCourses(Course course){
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                course.name,
              ),
            ),
          ),
        ],
      ),
      !course.end ? 
      const Padding(
        padding: EdgeInsets.only(left: 5.5),
        child: SizedBox(
          width: 3,
          height: 20,
        ),
      ) : 
      Container()
    ],
  );
}

