import 'dart:convert';

/// adult : false
/// gender : 1
/// id : 2519
/// known_for_department : "Costume & Make-Up"
/// name : "Sanja Milković Hays"
/// original_name : "Sanja Milković Hays"
/// popularity : 4.354
/// profile_path : null
/// credit_id : "61d92db99824c8001c46fa27"
/// department : "Costume & Make-Up"
/// job : "Costume Design"

Crew crewFromJson(String str) => Crew.fromJson(json.decode(str));
String crewToJson(Crew data) => json.encode(data.toJson());
class Crew {
  Crew({
      this.adult, 
      this.gender, 
      this.id, 
      this.knownForDepartment, 
      this.name, 
      this.originalName, 
      this.popularity, 
      this.profilePath, 
      this.creditId, 
      this.department, 
      this.job,});

  Crew.fromJson(dynamic json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];
    knownForDepartment = json['known_for_department'];
    name = json['name'];
    originalName = json['original_name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
    creditId = json['credit_id'];
    department = json['department'];
    job = json['job'];
  }
  bool? adult;
  int? gender;
  int? id;
  String? knownForDepartment;
  String? name;
  String? originalName;
  double? popularity;
  dynamic profilePath;
  String? creditId;
  String? department;
  String? job;

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
    map['credit_id'] = creditId;
    map['department'] = department;
    map['job'] = job;
    return map;
  }

}