import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
              height: 103,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[AppColors.ciano, AppColors.roxo])),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 45),
                child: Text(
                  "Olá, José",
                  style: TextStyles.titledrawer,
                ),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21, top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Perfil',
                      style: TextStyles.tittlecarddrawer,
                    ),
                    //SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Cadastro',
                        style: TextStyles.subtittlecarddrawer,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.5,
                indent: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21, top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Conta',
                      style: TextStyles.tittlecarddrawer,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Gerenciar cartões',
                        style: TextStyles.subtittlecarddrawer,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Investimentos',
                        style: TextStyles.subtittlecarddrawer,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.5,
                indent: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21, top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Segurança',
                      style: TextStyles.tittlecarddrawer,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Alterar senha',
                        style: TextStyles.subtittlecarddrawer,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.5,
                indent: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Ajuda',
                        style: TextStyles.subtittlecarddrawer,
                      ),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.5,
                indent: 0,
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(0),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sair',
                    style: TextStyles.roxow400Roboto,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
