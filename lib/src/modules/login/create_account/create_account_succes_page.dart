import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/initial/initial_page.dart';

class CreateAccountSuccessPage extends StatefulWidget {
  const CreateAccountSuccessPage({Key? key}) : super(key: key);

  @override
  _CreateAccountSuccessPageState createState() =>
      _CreateAccountSuccessPageState();
}

class _CreateAccountSuccessPageState
    extends ModularState<CreateAccountSuccessPage, CreateAccountController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.popAndPushNamed("/home");
      },
      child: Image.asset(
        "assets/images/onboarding.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
