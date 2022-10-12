import 'package:cv/domain/entities/personal_infos.dart';

import 'course.dart';
import 'education.dart';
import 'experince.dart';
import 'hability.dart';
import 'language.dart';

class CVInfo {
  static var obs;

  CVInfo({
    required this.personalInfos,
    required this.languages,
    required this.habilitys,
    required this.education,
    required this.courses,
    required this.expirences,
  });
  late final PersonalInfos personalInfos;
  late final List<Language> languages;
  late final List<Hability> habilitys;
  late final List<Education> education;
  late final List<Course> courses;
  late final List<Expirence> expirences;
  
  CVInfo.fromJson(Map<String, dynamic> json){
    personalInfos = PersonalInfos.fromJson(json['personal_infos']);
    languages = List.from(json['languages']).map((e)=>Language.fromJson(e)).toList();
    habilitys = List.from(json['habilitys']).map((e)=>Hability.fromJson(e)).toList();
    education = List.from(json['education']).map((e)=>Education.fromJson(e)).toList();
    courses = List.from(json['courses']).map((e)=>Course.fromJson(e)).toList();
    expirences = List.from(json['expirences']).map((e)=>Expirence.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['personal_infos'] = personalInfos.toJson();
    _data['languages'] = languages.map((e)=>e.toJson()).toList();
    _data['habilitys'] = habilitys.map((e)=>e.toJson()).toList();
    _data['education'] = education.map((e)=>e.toJson()).toList();
    _data['courses'] = courses.map((e)=>e.toJson()).toList();
    _data['expirences'] = expirences.map((e)=>e.toJson()).toList();
    return _data;
  }
}