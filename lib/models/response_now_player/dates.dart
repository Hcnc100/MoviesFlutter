import 'dart:convert';

/// maximum : "2022-02-01"
/// minimum : "2021-12-15"

Dates datesFromJson(String str) => Dates.fromJson(json.decode(str));
String datesToJson(Dates data) => json.encode(data.toJson());
class Dates {
  Dates({
      this.maximum, 
      this.minimum,});

  Dates.fromJson(dynamic json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }
  String? maximum;
  String? minimum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    return map;
  }

}