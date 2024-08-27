import 'dart:convert';

class EventModel {
  String? name;
  String? description;
  String? location;
  String? color;
  String? time;

  EventModel({
    this.name,
    this.description,
    this.location,
    this.color,
    this.time,
  });

  EventModel copyWith({
    String? name,
    String? description,
    String? location,
    String? color,
    String? time,
  }) =>
      EventModel(
        name: name ?? this.name,
        description: description ?? this.description,
        location: location ?? this.location,
        color: color ?? this.color,
        time: time ?? this.time,
      );

  factory EventModel.fromRawJson(String str) => EventModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
    name: json["name"],
    description: json["description"],
    location: json["location"],
    color: json["color"],
    time: json["time"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "location": location,
    "color": color,
    "time": time,
  };
}
