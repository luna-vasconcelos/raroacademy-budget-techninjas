import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  void initState() {
    store.authenticate();

    /*
    reaction = reaction((store.state)=> state, (s){
      if(s.runtimeType == SplashStateLogged){
        Modular.to.navigate("/home");
      } else if(s.runtimeType == SplashStateEmpty){
        Modular.to.pushReplacement("/login");
      } else if(s.runtimeType == SplashStateError){
        Modular.to.navigate("/general_error");
      }
    });
    */
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Modular.to.navigate("/login"),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
