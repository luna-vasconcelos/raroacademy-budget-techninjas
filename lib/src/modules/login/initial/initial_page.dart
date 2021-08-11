import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/validators/validators.dart';
import 'initial_page_controller.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState
    extends ModularState<InitialPage, InitialPageController> {
  @override
  void initState() {
    // store.login(email: email, password: password);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController email = new TextEditingController();

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
                  child:
                      Text('Vamos Começar!', style: TextStyles.cyanw400Roboto),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 264, left: 52),
                child: Row(
                  children: [
                    Text(
                      'Novo usuário?',
                      style:
                          TextStyle(fontSize: 16, color: AppColors.lightgrey),
                    ),
                    TextButton(
                        onPressed: () {
                          Modular.to.pushNamed('/login/create_account');
                        },
                        child: Text(
                          'Crie uma conta',
                          style: TextStyle(fontSize: 16, color: AppColors.roxo),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 330, left: 48, right: 48),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppTextFormFieldWidget(
                        controller: email,
                        hintText: 'Insira seu e-mail',
                        labelText: 'E-mail',
                        validator: (value) =>
                            InputValidators().emailValidator(value),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButtonWidget(
                            fontSize: 18,
                            buttonText: 'CONTINUAR',
                            width: 114,
                            height: 36,
                            onpressed: () {
                              if (_formKey.currentState!.validate()) {
                                Modular.to.pushNamed('/login');
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'OU',
                        style:
                            TextStyle(fontSize: 16, color: AppColors.lightgrey),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Padding(
                padding: EdgeInsets.only(top: 540, left: 45),
                child: Column(
                  children: [
                    GoogleAuthButton(
                      onPressed: () {},
                      text: 'CONTINUAR COM O GOOGLE',
                      style: AuthButtonStyle(
                        borderRadius: 20,
                      ),
                    ),
                    FacebookAuthButton(
                      onPressed: () {},
                      text: 'CONTINUAR COM O FACEBOOK',
                      style: AuthButtonStyle(
                        borderRadius: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
