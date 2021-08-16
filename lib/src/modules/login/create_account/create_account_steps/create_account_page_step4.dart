import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/validators/validators.dart';

class CreateAccountPageViewStep4 extends StatefulWidget {
  const CreateAccountPageViewStep4({Key? key}) : super(key: key);

  @override
  _CreateAccountPageViewStep4State createState() =>
      _CreateAccountPageViewStep4State();
}

class _CreateAccountPageViewStep4State
    extends State<CreateAccountPageViewStep4> {
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
                  width: 255.0,
                  height: 118.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bem-Vindo!',
                        style: TextStyles.cyanw400Roboto,
                      ),
                      Text("Por favor insira seus dados nos campos abaixo.")
                    ],
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
                            hintText: 'Insira seu e-mail',
                            labelText: 'E-mail',
                            validator: (value) =>
                                InputValidators().emailValidator(value),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AppTextFormFieldWidget(
                            controller: password,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
