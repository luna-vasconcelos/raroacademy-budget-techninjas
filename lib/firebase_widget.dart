import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/app_widget.dart';
import 'package:raroacademy_budget_techninjas/src/app_module.dart';

class FirebaseInitial extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _FirebaseInitialState createState() => _FirebaseInitialState();
}

class _FirebaseInitialState extends State<FirebaseInitial> {
  /// The future is part of the state of our widget. We should not call `initializeFirebaseInitial`
  /// directly inside
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(
            child: Text("Deu erro no firebase"),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return ModularApp(
            module: AppModule(),
            child: AppWidget(),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          child: CircularProgressIndicator(),
          color: Colors.white,
        ));
      },
    );
  }
}
