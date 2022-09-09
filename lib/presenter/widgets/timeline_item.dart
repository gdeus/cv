import 'package:cv/models/job_experince.dart';
import 'package:flutter/material.dart';

import 'job.dart';

Widget TimelineItem({required String dateInit, required String dateFinish, required JobExperince jobExperince, required bool last}){
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              dateInit,
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
            ),
          )
        ],
      ),
      Container(
        margin: const EdgeInsets.only(left: 5.5),
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(width: 3, color: Colors.black)
          )
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Job(
                    name: jobExperince.name,
                    description: jobExperince.description,
                    technologies: jobExperince.technologies,
                    responsibility: jobExperince.responsibility
                  )
                )
              )
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              dateFinish,
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
            ),
          )
        ],
      ),
      !last ?
      Container(
        margin: const EdgeInsets.only(left: 5.5),
        height: 10,
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(width: 3, color: Colors.black)
          )
        ),
      ) : Container()
    ],
  );
}