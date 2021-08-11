import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_steps/create_account_page_step1.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_steps/create_account_page_step3.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_steps/create_account_page_step4.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';
import 'create_account_steps/create_account_page_step2.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState
    extends ModularState<CreateAccountPage, CreateAccountController> {
  int currentPage = 0;
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
          CreateAccountPageViewStep1(),
          CreateAccountPageviewStep2(),
          CreateAccountPageviewStep3(),
          CreateAccountPageviewStep4(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageViewController,
        builder: (context, snapshot) {
          return Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 128,
                  height: 48,
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(0, 0, 0, 0.26),
                    ),
                    label: Text(
                      " VOLTAR",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.26),
                      ),
                    ),
                    onPressed: () {
                      controller.pageViewController.previousPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
                Text("${currentPage + 1}/4",
                    style:
                        TextStyles.createAccountTextStyleBottomNavigatorNumber),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: ElevatedButtonWidget(
                      fontSize: 14,
                      buttonText: "CONTINUAR ",
                      width: 116,
                      height: 32,
                      paddingValue: 0,
                      sufixicon: Icon(
                        Icons.arrow_forward,
                        size: 18,
                      ),
                      onpressed: () {
                        controller.pageViewController.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
