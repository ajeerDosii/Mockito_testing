// To parse this JSON data, do
//
//     final fakeModel = fakeModelFromJson(jsonString);

import 'dart:convert';

List<FakeModel> fakeModelFromJson(String str) =>
    List<FakeModel>.from(json.decode(str).map((x) => FakeModel.fromJson(x)));

String fakeModelToJson(List<FakeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FakeModel {
  FakeModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory FakeModel.fromJson(Map<String, dynamic> json) => FakeModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
