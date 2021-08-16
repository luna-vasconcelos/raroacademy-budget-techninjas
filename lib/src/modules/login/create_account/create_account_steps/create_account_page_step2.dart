import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/validators/validators.dart';

class CreateAccountPageViewStep2 extends StatefulWidget {
  const CreateAccountPageViewStep2({Key? key}) : super(key: key);

  @override
  _CreateAccountPageViewStep2State createState() =>
      _CreateAccountPageViewStep2State();
}

class _CreateAccountPageViewStep2State
    extends State<CreateAccountPageViewStep2> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // store.login(email: email, password: password);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController telefoneCreate = TextEditingController();
    TextEditingController cpfCreate = TextEditingController();

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
                  height: 86.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bem-Vindo!',
                        style: TextStyles.h3HeadCreateAccount,
                      ),
                      Text(
                        "Mais alguns dados.",
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
                          controller: telefoneCreate,
                          hintText: 'Telefone',
                          labelText: 'Telefone',
                          validator: (value) =>
                              InputValidators().emailValidator(value),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AppTextFormFieldWidget(
                          controller: cpfCreate,
                          labelText: 'CPF',
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
