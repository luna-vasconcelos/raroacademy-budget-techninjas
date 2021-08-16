import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class CreateAccountPageViewStep3 extends StatefulWidget {
  const CreateAccountPageViewStep3({Key? key}) : super(key: key);

  @override
  _CreateAccountPageViewStep3State createState() =>
      _CreateAccountPageViewStep3State();
}

class _CreateAccountPageViewStep3State
    extends State<CreateAccountPageViewStep3> {
  @override
  void initState() {
    // store.login(email: email, password: password);
    super.initState();
  }

  bool? policy;
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
    );
  }
}
