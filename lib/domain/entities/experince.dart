class Expirence {
  Expirence({
    required this.initDate,
    required this.finishData,
    required this.office,
    required this.company,
    required this.desc,
    required this.technologies,
    required this.last,
  });
  late final String initDate;
  late final String finishData;
  late final String office;
  late final String company;
  late final String desc;
  late final List<String> technologies;
  late final bool last;
  
  Expirence.fromJson(Map<String, dynamic> json){
    initDate = json['init_date'];
    finishData = json['finish_data'];
    office = json['office'];
    company = json['company'];
    desc = json['desc'];
    technologies = List.castFrom<dynamic, String>(json['technologies']);
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['init_date'] = initDate;
    _data['finish_data'] = finishData;
    _data['office'] = office;
    _data['company'] = company;
    _data['desc'] = desc;
    _data['technologies'] = technologies;
    _data['last'] = last;
    return _data;
  }
}