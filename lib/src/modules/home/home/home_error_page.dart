import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/drawer_menu.dart/drawer_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';

class HomeErrorPage extends StatelessWidget {
  const HomeErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text(
          'Olá, José',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[AppColors.ciano, AppColors.roxo])),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 112,
              width: 193,
              child: Text(
                'Erro na conexão',
                style: TextStyles.cyanw400Roboto,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: ElevatedButtonWidget(
                  buttonText: "TENTAR NOVAMENTE",
                  width: 180,
                  height: 40,
                  onpressed: () {},
                  fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
