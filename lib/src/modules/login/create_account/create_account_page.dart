import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_repository.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/validators/validators.dart';

class CreateAccountPage extends StatefulWidget {
  CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState
    extends ModularState<CreateAccountPage, CreateAccountController> {
  final _namefocusNode = FocusNode();
  final _emailfocusNode = FocusNode();
  final _telefonefocusNode = FocusNode();
  final _cpffocusNode = FocusNode();
  GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  GlobalKey<FormState> _formKey4 = GlobalKey<FormState>();

  bool? policy;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();

    _namefocusNode.addListener(() {
      setState(() {});
    });
    _emailfocusNode.addListener(() {
      setState(() {});
    });
    _telefonefocusNode.addListener(() {
      setState(() {});
    });
    _cpffocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _namefocusNode.dispose();
    _emailfocusNode.dispose();
    _telefonefocusNode.dispose();
    _cpffocusNode.dispose();
    super.dispose();
  }

  bool isvalid() {
    if (_formKey1.currentState!.validate() &&
        _formKey2.currentState!.validate() &&
        _formKey4.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //physics: NeverScrollableScrollPhysics(),
        controller: controller.pageViewController,
        onPageChanged: (index) {
          currentPage = index;
        },
        children: [
          SafeArea(
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
                        key: _formKey1,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: AppTextFormFieldWidget(
                                  autovalidateMode: AutovalidateMode.disabled,
                                  focusNode: _namefocusNode,
                                  textInputAction: TextInputAction.next,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  controller: controller.nameCreate,
                                  labelText:
                                      _namefocusNode.hasFocus ? "Nome" : "",
                                  hintText:
                                      _namefocusNode.hasFocus ? "" : "Nome",
                                  validator: (value) {
                                    if (value != null && value.length < 6) {
                                      return ("Insira um nome Válido");
                                    }
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: AppTextFormFieldWidget(
                                controller: controller.emailCreate,
                                textInputAction: TextInputAction.go,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                focusNode: _emailfocusNode,
                                onEditingComplete: () => {},
                                labelText:
                                    _emailfocusNode.hasFocus ? "E-mail" : "",
                                hintText:
                                    _emailfocusNode.hasFocus ? "" : "E-mail",
                                validator: (value) => InputValidators()
                                    .emailValidator(value ?? ""),
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
          ),
          SafeArea(
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
                        key: _formKey2,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: AppTextFormFieldWidget(
                                controller: controller.telefoneCreate,
                                keyboardType: TextInputType.phone,
                                hintText: 'Telefone',
                                labelText: 'Telefone',
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  TelefoneInputFormatter(),
                                ],
                                validator: (value) {
                                  if (Validator.phone(value)) {
                                    return ("Insira um telefone válido");
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: AppTextFormFieldWidget(
                                  controller: controller.cpfCreate,
                                  labelText: 'CPF',
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    CpfInputFormatter(),
                                  ],
                                  validator: (value) {
                                    if (Validator.cpf(value)) {
                                      return ("Insira um CPF valido");
                                    }
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
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
                              "Leia com atenção e aceite.",
                              style: TextStyles.h6HeadCreateAccount,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 274, left: 27, right: 22),
                      child: Column(
                        children: [
                          Container(
                              height: 193.0,
                              width: 311.0,
                              child: Text(
                                "Lorem Ipsum neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Ipsum neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Nque porro  est qui dolorem ipsum quia dolor sit amet, , adipisci velit. Quisquam est qui dolorem ipsum.",
                                style: TextStyles.blackRoboto16400,
                              )),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(children: [
                            Container(
                              height: 48,
                              width: 48,
                              child: Radio<bool>(
                                value: policy ?? true,
                                groupValue: policy,
                                toggleable: true,
                                onChanged: (value) {
                                  setState(() {
                                    policy = value;
                                    print(policy);
                                  });
                                },
                              ),
                            ),
                            Container(
                              height: 48,
                              width: 272,
                              child: Text(
                                "Eu li e aceito os termos e condições e a Política de privacidade do budget.",
                                style: TextStyles.blackRoboto16400,
                              ),
                            )
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
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
                              "Agora crie sua senha contendo:",
                              style: TextStyles.h6HeadCreateAccount,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 320,
                      child: Container(
                        margin: EdgeInsets.only(left: 60, right: 48),
                        height: 72,
                        width: 267,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "•  pelo menos oito caracteres",
                              style: TextStyles.blackRoboto16400,
                            ),
                            //TODO Verificar o campo com Bullet Point
                            Text(
                              "•  letras maiúscula, letras minúsculas, números e símbolos",
                              style: TextStyles.blackRoboto16400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 419, left: 48, right: 48),
                      child: Form(
                        key: _formKey4,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: AppTextFormFieldWidget(
                                  controller: controller.passwordCreate,
                                  hintText: 'Crie uma senha',
                                  validator: (value) {
                                    if (value == null) {
                                      return ("Digite uma senha valida");
                                    } else {
                                      InputValidators()
                                          .passwordValidator(value);
                                    }
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: AppTextFormFieldWidget(
                                  controller:
                                      controller.passwordCreateConfirmation,
                                  hintText: 'Confirme sua senha',
                                  validator: (value) {
                                    if (value !=
                                        controller.passwordCreate.text) {
                                      return "As senhas não coincidem";
                                    }
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: AnimatedBuilder(
          animation: controller.pageViewController,
          builder: (context, snapshot) {
            return Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 116,
                      height: 48,
                      child: TextButton.icon(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color.fromRGBO(0, 0, 0, 0.26),
                        ),
                        label: Text(
                          "VOLTAR",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.4,
                            textBaseline: TextBaseline.alphabetic,
                            color: Color.fromRGBO(0, 0, 0, 0.26),
                          ),
                        ),
                        onPressed: () {
                          if (currentPage == 0) {
                            Modular.to.popAndPushNamed('/initial');
                          } else {
                            controller.pageViewController.previousPage(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      ),
                    ),
                    Text("${currentPage + 1}/4",
                        style: TextStyles
                            .createAccountTextStyleBottomNavigatorNumber),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: ElevatedButtonWidget(
                          mainAlign: MainAxisAlignment.spaceBetween,
                          fontSize: 14,
                          buttonText: "CONTINUAR ",
                          width: 116,
                          height: 32,
                          paddingValue: 4,
                          sufixicon: Icon(
                            Icons.arrow_forward,
                            size: 18,
                          ),
                          onpressed: () {
                            if (currentPage == 0 &&
                                _formKey1.currentState!.validate()) {
                              controller.pageViewController.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            } else if (currentPage == 1 &&
                                _formKey2.currentState!.validate()) {
                              controller.pageViewController.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            } else if (currentPage == 2 && policy == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Aceite as Termos de Uso para continuar')),
                              );
                            } else if (currentPage == 2 && policy == true) {
                              controller.pageViewController.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            } else if (currentPage == 3 &&
                                _formKey4.currentState!.validate()) {
                              // CreateUser()
                              //     .createUser(
                              //         controller.nameCreate.value.text,
                              //         controller.telefoneCreate.value.text,
                              //         controller.cpfCreate.value.text,
                              //         policy!,
                              //         controller.emailCreate.value.text,
                              //         controller.passwordCreate.value.text)
                              //     .then((value) => Modular.to.popAndPushNamed(
                              //         "create_account_module/onboard"));
                            }
                            /*final user = User(
                                cpf: controller.cpfCreate.value.text,
                                name: controller.nameCreate.value.text,
                                email: controller.emailCreate.value.text,
                                password: controller.passwordCreate.value.text,
                                telephone: controller.telefoneCreate.value.text,
                                policyAccepted: policy!,
                              );
                              print(user);*/
                          }),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
