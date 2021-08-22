import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginRepository {
  FirebaseAuth auth = FirebaseAuth.instance;

  // signup
  

  // login-signin
  Future<String?> login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return Modular.to.pushReplacementNamed('/home');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Usuário não encontrado.');
      } else if (e.code == 'wrong-password') {
        print('Senha incorreta.');
      }
      print(e.message);
    }
  }

  // sign out
  void signOut() {
    auth.signOut().then((value) => Modular.to.pushReplacementNamed('/'));
  }
}
