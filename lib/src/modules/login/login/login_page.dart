import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login/login_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login_repository.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/validators/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // store.login(email: email, password: password);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController email = new TextEditingController();
    TextEditingController password = new TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Stack(
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
                  child: Text(
                    'Insira sua senha',
                    style: TextStyles.cyanw400Roboto,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    //top: 144.0,
                    //left: 20,
                    ),
                child: Container(
                  padding: EdgeInsets.only(top: 338, left: 48, right: 48),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AppTextFormFieldWidget(
                            controller: email,
                            textInputAction: TextInputAction.go,
                            hintText: 'Insira seu e-mail',
                            labelText: 'E-mail',
                            validator: (value) =>
                                InputValidators().emailValidator(value ?? ""),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AppTextFormFieldWidget(
                            controller: password,
                            textInputAction: TextInputAction.go,
                            labelText: 'Senha',
                            obscureText: true,
                            validator: (value) =>
                                InputValidators().passwordValidator(value!),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'RECUPERAR SENHA',
                                style: TextStyle(
                                    color: AppColors.roxo, fontSize: 13),
                              ),
                            ),
                            ElevatedButtonWidget(
                                fontSize: 18,
                                buttonText: 'CONTINUAR',
                                width: 114,
                                height: 36,
                                onpressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    LoginRepository()
                                        .login(email.text, password.text);
                                  }
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
