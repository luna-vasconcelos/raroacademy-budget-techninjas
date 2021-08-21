import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginRepository {
  FirebaseAuth auth = FirebaseAuth.instance;

  // signup

  //Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // login
  /*Future<void> login(String email, String password) async {
    try {
      await _firebaseAuth.loginWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }*/

  Future<String?> login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return Modular.to.pushReplacementNamed('/home');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
      print(e.message);
    }
  }

  // sign out
  void signOut() {
    auth.signOut().then((value) => Modular.to.pushReplacementNamed('/'));
  }

}
