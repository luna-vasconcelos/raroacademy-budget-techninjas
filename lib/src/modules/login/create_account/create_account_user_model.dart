import 'dart:convert';

class User {
  final String uuid;
  final String name;
  final String email;
  final String telephone;
  final String cpf;
  final bool privacyPolicy = false;
  final String password;
  User({
    required this.uuid,
    required this.name,
    required this.email,
    required this.telephone,
    required this.cpf,
    required this.password,
  });

  User copyWith({
    String? uuid,
    String? name,
    String? email,
    String? telephone,
    String? cpf,
    String? password,
  }) {
    return User(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      email: email ?? this.email,
      telephone: telephone ?? this.telephone,
      cpf: cpf ?? this.cpf,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'name': name,
      'email': email,
      'telephone': telephone,
      'cpf': cpf,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uuid: map['uuid'],
      name: map['name'],
      email: map['email'],
      telephone: map['telephone'],
      cpf: map['cpf'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(uuid: $uuid, name: $name, email: $email, telephone: $telephone, cpf: $cpf, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.uuid == uuid &&
        other.name == name &&
        other.email == email &&
        other.telephone == telephone &&
        other.cpf == cpf &&
        other.password == password;
  }

  @override
  int get hashCode {
    return uuid.hashCode ^
        name.hashCode ^
        email.hashCode ^
        telephone.hashCode ^
        cpf.hashCode ^
        password.hashCode;
  }
}
