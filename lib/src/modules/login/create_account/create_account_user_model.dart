import 'dart:convert';

class User {
  final String name;
  final String email;
  final String telephone;
  final String cpf;
  final String password;
  final bool policyAccepted;

  User({
    required this.name,
    required this.email,
    required this.telephone,
    required this.cpf,
    required this.password,
    required this.policyAccepted,
  });

  User copyWith({
    String? name,
    String? email,
    String? telephone,
    String? cpf,
    String? password,
    String? policyAccepted,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      telephone: telephone ?? this.telephone,
      cpf: cpf ?? this.cpf,
      password: password ?? this.password,
      policyAccepted: false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'telephone': telephone,
      'cpf': cpf,
      'password': password,
      'policyAccepted': policyAccepted,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        name: map['name'],
        email: map['email'],
        telephone: map['telephone'],
        cpf: map['cpf'],
        password: map['password'],
        policyAccepted: map['policyAccepted']);
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(name: $name, email: $email, telephone: $telephone, cpf: $cpf, password: $password, policyAccepted: $policyAccepted)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.name == name &&
        other.email == email &&
        other.telephone == telephone &&
        other.cpf == cpf &&
        other.password == password;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        telephone.hashCode ^
        cpf.hashCode ^
        password.hashCode;
  }
}
