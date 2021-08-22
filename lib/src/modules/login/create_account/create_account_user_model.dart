import 'dart:convert';

/*class UserData {
  final String name;
  final String email;
  final String telephone;
  final String cpf;
  final String password;
  final bool policyAccepted;
  final String uid;

  UserData({
    required this.name,
    required this.email,
    required this.telephone,
    required this.cpf,
    required this.password,
    required this.policyAccepted,
    required this.uid,
  });

  UserData copyWith({
    String? name,
    String? email,
    String? telephone,
    String? cpf,
    String? password,
    String? policyAccepted,
  }) {
    return UserData(
      name: name ?? this.name,
      email: email ?? this.email,
      telephone: telephone ?? this.telephone,
      cpf: cpf ?? this.cpf,
      password: password ?? this.password,
      policyAccepted: false, 
      uid: '',
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

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
        name: map['name'],
        email: map['email'],
        telephone: map['telephone'],
        cpf: map['cpf'],
        password: map['password'],
        policyAccepted: map['policyAccepted'], 
        uid: '');
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserData(name: $name, email: $email, telephone: $telephone, cpf: $cpf, password: $password, policyAccepted: $policyAccepted)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserData &&
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
}*/

class UserData{
  final String? uid;
  final String? name;
  final String? telephone;
  final bool? policy;

  UserData({ 
    this.uid, 
    this.telephone, 
    this.policy, 
    this.name, 
  });
}
