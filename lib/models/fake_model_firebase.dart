import 'dart:convert';

List<SamplefirbaseData> samplefirbaseDataFromJson(String str) =>
    List<SamplefirbaseData>.from(
        json.decode(str).map((x) => SamplefirbaseData.fromJson(x)));

String samplefirbaseDataToJson(List<SamplefirbaseData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SamplefirbaseData {
  SamplefirbaseData({
    required this.name,
    required this.age,
  });

  String name;
  String age;

  factory SamplefirbaseData.fromJson(Map<String, dynamic> json) =>
      SamplefirbaseData(
        name: json["name"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
      };
}
