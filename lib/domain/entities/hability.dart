class Hability {
  Hability({
    required this.hability,
    required this.icon,
  });
  late final String hability;
  late final String icon;
  
  Hability.fromJson(Map<String, dynamic> json){
    hability = json['hability'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hability'] = hability;
    _data['icon'] = icon;
    return _data;
  }
}