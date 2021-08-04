import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/modules/home/home_page.dart';
import 'package:raroacademy_budget_techninjas/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/shared/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 74,
            left: 48,
            child: Image.asset(
              'lib/assets/logo_budget.png',
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
                        controller: email, hintText: 'Insira seu e-mail'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AppTextFormFieldWidget(
                        controller: pass, hintText: 'Senha', obscureText: true,),
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
                            AuthService().login(
                                    email.text,
                                    pass.text)
                                .then((value) => Navigator.pushReplacementNamed(
                                    context, '/home'));
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