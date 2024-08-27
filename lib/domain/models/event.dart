import 'dart:convert';

class EventModel {
  int? id;
  String? name;
  String? description;
  String? location;
  int? color;
  String? time;

  EventModel({
    this.id,
    this.name,
    this.description,
    this.location,
    this.color,
    this.time,
  });

  EventModel copyWith({
    int? id,
    String? name,
    String? description,
    String? location,
    int? color,
    String? time,
  }) =>
      EventModel(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        location: location ?? this.location,
        color: color ?? this.color,
        time: time ?? this.time,
      );

  factory EventModel.fromRawJson(String str) => EventModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    location: json["location"],
    color: json["color"],
    time: json["time"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "location": location,
    "color": color,
    "time": time,
  };
}
