import 'dart:convert';

class AppUser {
  final String name;
  final String email;
  final String telephone;
  final String cpf;
  final String password;
  final bool policyAccepted;

  AppUser({
    required this.name,
    required this.email,
    required this.telephone,
    required this.cpf,
    required this.password,
    required this.policyAccepted,
  });

  AppUser copyWith({
    String? name,
    String? email,
    String? telephone,
    String? cpf,
    String? password,
    String? policyAccepted,
  }) {
    return AppUser(
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

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
        name: map['name'],
        email: map['email'],
        telephone: map['telephone'],
        cpf: map['cpf'],
        password: map['password'],
        policyAccepted: map['policyAccepted']);
  }

  String toJson() => json.encode(toMap());

  factory AppUser.fromJson(String source) => AppUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AppUser(name: $name, email: $email, telephone: $telephone, cpf: $cpf, password: $password, policyAccepted: $policyAccepted)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppUser &&
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
