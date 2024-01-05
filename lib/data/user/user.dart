import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  int id;
  String name;
  String email;
  String profilePicture;
  String occupation;
  List<String> interests;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePicture,
    required this.occupation,
    required this.interests,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        profilePicture: json["profile_picture"],
        occupation: json["occupation"],
        interests: List<String>.from(json["interests"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "profile_picture": profilePicture,
        "occupation": occupation,
        "interests": List<dynamic>.from(interests.map((x) => x)),
      };
}
