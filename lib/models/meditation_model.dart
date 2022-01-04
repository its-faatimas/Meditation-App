// To parse this JSON data, do
//
//     final meditationModel = meditationModelFromJson(jsonString);

import 'dart:convert';

MeditationModel meditationModelFromJson(String str) => MeditationModel.fromJson(json.decode(str));

String meditationModelToJson(MeditationModel data) => json.encode(data.toJson());

class MeditationModel {
  MeditationModel({
    this.name,
    this.image,
    this.category,
  });

  String? name;
  String? image;
  String? category;

  factory MeditationModel.fromJson(Map<String, dynamic> json) => MeditationModel(
    name: json["name"],
    image: json["image"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
    "category": category,
  };
}
