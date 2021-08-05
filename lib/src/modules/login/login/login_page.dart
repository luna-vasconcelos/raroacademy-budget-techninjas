import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login/login_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/services/auth_service.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  void initState() {
    // store.login(email: email, password: password);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController email = new TextEditingController();
    TextEditingController password = new TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 74,
            left: 48,
            child: Image.asset(
              'assets/images/logo_budget.png',
              height: 53.85,
              width: 100,
            ),
          ),
          Positioned(
            top: 144,
            left: 48,
            child: SizedBox(
              width: 207.0,
              height: 122.0,
              child: Text('Insira sua senha', style: TextStyles.cyanw400Roboto),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                //top: 144.0,
                //left: 20,
                ),
            child: Container(
              padding: EdgeInsets.only(top: 338, left: 48),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AppTextFormFieldWidget(
                        controller: email, 
                        hintText: 'Insira seu e-mail'
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AppTextFormFieldWidget(
                      controller: password,
                      hintText: 'Senha',
                      obscureText: true,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'RECUPERAR SENHA',
                          style: TextStyle(color: AppColors.roxo, fontSize: 13),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            AuthService().login(email.text, password.text).then(
                                (value) => Modular.to.pushNamed('/home'));
                          },
                          child: Text('CONTINUAR'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.roxo))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
