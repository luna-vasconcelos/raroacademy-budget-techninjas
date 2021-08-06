import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';

import 'inicial_page_controller.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  _InicialPageState createState() => _InicialPageState();
}

class _InicialPageState
    extends ModularState<InicialPage, InicialPageController> {
  @override
  void initState() {
    // store.login(email: email, password: password);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Modular.to.pushNamed('/create');
                        },
                        child: Text(
                          'Crie uma conta',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                  ],
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
                      Row(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                Modular.to.pushNamed('/login');
                              },
                              child: Text('CONTINUAR'),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.roxo))),
                        ],
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
