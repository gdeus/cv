import 'package:cv/models/job_experince.dart';
import 'package:flutter/material.dart';

import 'job.dart';

Widget PersonalXP({required JobExperince jobExperince}){
  return Column(
    children: [
      Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.redAccent
            ),
          ),
          Container(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Job(
                    name: jobExperince.name,
                    description: jobExperince.description,
                    technologies: jobExperince.technologies,
                    responsibility: jobExperince.responsibility
                  )
                )
              ),
          )
        ],
      )
    ],
  );
}