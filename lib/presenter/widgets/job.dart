import 'package:flutter/material.dart';

import 'info_job.dart';

Widget Job({required String name, required String description, required List<String> technologies, required String responsibility}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      JobInfo('Cargo', responsibility),
      JobInfo(name, description),
      JobInfo('Tecnologias', technologies.toString()),
    ],
  );

}