import 'package:cv/presenter/cv_screen_controller.dart';
import 'package:cv/presenter/mobile/test.dart';
import 'package:cv/presenter/state.dart' as hook;
import 'package:cv/presenter/web/web.dart';
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
        physics: const ScrollPhysics(),
          child: Obx(() {
            var state = c.state.value;
            if (state is hook.LoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is hook.SuccessState) {
              return LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) { 
                  if (constraints.maxWidth <= 900) {
                    return Obx(() => Mobile(context, state.cvInfo));
                  }
                  return WebContent(context, state.cvInfo);
                }
              );
            }
            if(state is hook.ErrorState){
              return const Center(child: Text('Error State'));
            }
            return const Center(child: Text('Qualquer bosta'));
          })
        )
    );
  }
}
