import 'dart:convert';

/// adult : false
/// gender : 2
/// id : 1136406
/// known_for_department : "Acting"
/// name : "Tom Holland"
/// original_name : "Tom Holland"
/// popularity : 105.918
/// profile_path : "/2qhIDp44cAqP2clOgt2afQI07X8.jpg"
/// cast_id : 1
/// character : "Peter Parker / Spider-Man"
/// credit_id : "5d8e28d38289a0000fcc32f9"
/// order : 0


Cast castFromJson(String str) => Cast.fromJson(json.decode(str));

String castToJson(Cast data) => json.encode(data.toJson());

class Cast {
  Cast({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,});

  Cast.fromJson(dynamic json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];
    knownForDepartment = json['known_for_department'];
    name = json['name'];
    originalName = json['original_name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
    castId = json['cast_id'];
    character = json['character'];
    creditId = json['credit_id'];
    order = json['order'];
  }

  bool? adult;
  int? gender;
  int? id;
  String? knownForDepartment;
  String? name;
  String? originalName;
  double? popularity;
  String? profilePath;
  int? castId;
  String? character;
  String? creditId;
  int? order;

  get fullProfilePath {
    return profilePath != null  ?
    "https://image.tmdb.org/t/p/w500$profilePath" : "https://picsum.photos/200/300";
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['gender'] = gender;
    map['id'] = id;
    map['known_for_department'] = knownForDepartment;
    map['name'] = name;
    map['original_name'] = originalName;
    map['popularity'] = popularity;
    map['profile_path'] = profilePath;
    map['cast_id'] = castId;
    map['character'] = character;
    map['credit_id'] = creditId;
    map['order'] = order;
    return map;
  }

}