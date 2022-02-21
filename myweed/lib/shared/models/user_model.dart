import 'dart:convert';

class UserModel {
  final String name;
  final String? imageURL;

  UserModel({
    required this.name,
    this.imageURL,
  });

  UserModel copyWith({
    String? name,
    String? imageURL,
  }) {
    return UserModel(
      name: name ?? this.name,
      imageURL: imageURL ?? this.imageURL,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageURL': imageURL,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      imageURL: map['imageURL'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(name: $name, imageURL: $imageURL)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.imageURL == imageURL;
  }

  @override
  int get hashCode => name.hashCode ^ imageURL.hashCode;
}
