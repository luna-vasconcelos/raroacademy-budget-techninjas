import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateUser {
  FirebaseAuth auth = FirebaseAuth.instance;

  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');


  Future<String?> createUser(
    String name,
    String telephone,
    String cpf,
    bool policy,
    String email,
    String password,
  ) async {
    try {
      final res = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final User? user = auth.currentUser;
      Map<String, dynamic> data = {
      'name': name,
      'telephone': telephone,
      'policy': policy,
      'cpf': cpf,
      };
    String? uuid = user!.uid;
    await users.doc(uuid).set(data);
      print(res.additionalUserInfo);
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }
}
