import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/initial/shared/socialprovider_button_widget.dart';
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

  final _formKey = GlobalKey<FormState>();
  TextEditingController email = new TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                        textInputAction: TextInputAction.go,
                        hintText: 'Insira seu e-mail',
                        labelText: 'E-mail',
                        validator: (value) =>
                            InputValidators().emailValidator(value!),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButtonWidget(
                            fontSize: 14,
                            buttonText: 'CONTINUAR',
                            width: 114,
                            height: 36,
                            onpressed: () {
                              if (_formKey.currentState!.validate()) {
                                Modular.to.pushReplacementNamed('/login',
                                    arguments: email.value);
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.2,
                      ),
                      Text(
                        'ou',
                        style:
                            TextStyle(fontSize: 16, color: AppColors.lightgrey),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      SocialProviderButtonWidget(
                        onTap: () {},
                        icon: 'assets/icons/google.png',
                        textColor: AppColors.lightgrey,
                        buttonText: 'CONTINUAR COM O GOOGLE',
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SocialProviderButtonWidget(
                        onTap: () {},
                        icon: 'assets/icons/facebook.png',
                        buttonText: 'CONTINUAR COM O FACEBOOK',
                        textColor: Colors.white,
                        backgroundColor: AppColors.facebook,
                      ),
                    ],
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
