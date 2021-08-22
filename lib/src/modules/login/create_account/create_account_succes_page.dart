import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/initial/initial_page.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class CreateAccountSuccessPage extends StatefulWidget {
  const CreateAccountSuccessPage({Key? key}) : super(key: key);

  @override
  _CreateAccountSuccessPageState createState() =>
      _CreateAccountSuccessPageState();
}

class _CreateAccountSuccessPageState
    extends ModularState<CreateAccountSuccessPage, CreateAccountController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/backgroundimage.png'),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(Colors.blue.shade900, BlendMode.hardLight)),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(
            bottom: 25,
            right: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              SizedBox(
                width: 220,
                child: Text(
                  'Agora sim!\nVocê terá o controle financeiro nas suas mãos!',
                  style: TextStyles.cyanw700Roboto,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      onPressed: () {
                        Modular.to.popAndPushNamed("/home");
                      },
                      child: Text(
                        'VAMOS LÁ!',
                        style: TextStyles.buttomwhite,
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
