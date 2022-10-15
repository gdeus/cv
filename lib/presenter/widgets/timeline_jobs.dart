import 'package:cv/domain/entities/experince.dart';
import 'package:cv/models/job_experince.dart';
import 'package:cv/presenter/widgets/timeline_item.dart';
import 'package:flutter/material.dart';

Widget TimelineJobs(List<Expirence> listExpirences){
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: listExpirences.length,
    itemBuilder: (BuildContext context, int index) {
      return TimelineItem(
        dateInit: listExpirences[index].initDate, 
        dateFinish: listExpirences[index].finishData, 
        jobExperince: JobExperince(
          listExpirences[index].company, 
          listExpirences[index].desc,
          listExpirences[index].technologies, 
          listExpirences[index].office,
        ), 
        last: listExpirences[index].last, 
      );
  }); 
}

