import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/validators/validators.dart';

class CreateAccountPageViewStep1 extends StatefulWidget {
  const CreateAccountPageViewStep1({Key? key}) : super(key: key);

  @override
  _CreateAccountPageViewStep1State createState() =>
      _CreateAccountPageViewStep1State();
}

class _CreateAccountPageViewStep1State
    extends State<CreateAccountPageViewStep1> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // store.login(email: email, password: password);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailCreate = new TextEditingController();
    TextEditingController passwordCreate = new TextEditingController();

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
                  width: 255.0,
                  height: 118.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bem-Vindo!',
                        style: TextStyles.h3HeadCreateAccount,
                      ),
                      Text(
                        "Por favor insira seus dados nos campos abaixo.",
                        style: TextStyles.h6HeadCreateAccount,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 419, left: 48, right: 48),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AppTextFormFieldWidget(
                          controller: emailCreate,
                          hintText: 'Insira seu e-mail',
                          labelText: 'E-mail',
                          validator: (value) =>
                              InputValidators().emailValidator(value),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AppTextFormFieldWidget(
                          controller: passwordCreate,
                          labelText: 'Senha',
                          obscureText: true,
                          validator: (value) =>
                              InputValidators().passwordValidator(value),
                        ),
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
