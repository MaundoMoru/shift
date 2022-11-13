import 'package:flutter/cupertino.dart';

class User {
  String? id;
  String? image;
  String? name;
  String? bio;

  User(
      {@required this.id,
      @required this.image,
      @required this.name,
      @required this.bio});

  // encode user object to json by creating a map by later using function json.encode(Map<String, dynamic>)
  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'name': name,
        'bio': bio,
      };

  //decode from json to User object by first using function json.decode(Json-string) to return a map
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'],
        name = json['name'],
        bio = json['bio'];
}
