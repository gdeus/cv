class Education {
  Education({
    required this.initDate,
    required this.course,
    required this.local,
    required this.finishDate,
    required this.end,
  });
  late final String initDate;
  late final String course;
  late final String local;
  late final String finishDate;
  late final bool end;
  
  Education.fromJson(Map<String, dynamic> json){
    initDate = json['init_date'];
    course = json['course'];
    local = json['local'];
    finishDate = json['finish_date'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['init_date'] = initDate;
    _data['course'] = course;
    _data['local'] = local;
    _data['finish_date'] = finishDate;
    _data['end'] = end;
    return _data;
  }
}