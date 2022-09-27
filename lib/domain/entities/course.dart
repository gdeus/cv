class Course {
  Course({
    required this.name,
    required this.end,
  });
  late final String name;
  late final bool end;
  
  Course.fromJson(Map<String, dynamic> json){
    name = json['name'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['end'] = end;
    return _data;
  }
}