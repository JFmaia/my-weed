import 'dart:convert';

class UserModel {
  final String? name;
  final String? imageURL;
  final String? email;
  final String password;

  UserModel({
    required this.name,
    this.imageURL,
    required this.email,
    required this.password,
  });

  UserModel copyWith({
    String? name,
    String? imageURL,
    String? email,
    String? password,
  }) {
    return UserModel(
      name: name ?? this.name,
      imageURL: imageURL ?? this.imageURL,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageURL': imageURL,
      'email': email,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      imageURL: map['imageURL'],
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(name: $name, imageURL: $imageURL, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.imageURL == imageURL &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        imageURL.hashCode ^
        email.hashCode ^
        password.hashCode;
  }
}
