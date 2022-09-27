class PersonalInfos {
  PersonalInfos({
    required this.name,
    required this.phone,
    required this.email,
    required this.city,
    required this.martialStatus,
  });
  late final String name;
  late final String phone;
  late final String email;
  late final String city;
  late final String martialStatus;
  
  PersonalInfos.fromJson(Map<String, dynamic> json){
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    city = json['city'];
    martialStatus = json['martial_status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['phone'] = phone;
    _data['email'] = email;
    _data['city'] = city;
    _data['martial_status'] = martialStatus;
    return _data;
  }
}