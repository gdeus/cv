class Language {
  Language({
    required this.language,
    required this.rating,
  });
  late final String language;
  late final int rating;
  
  Language.fromJson(Map<String, dynamic> json){
    language = json['language'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['language'] = language;
    _data['rating'] = rating;
    return _data;
  }
}