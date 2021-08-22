import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home_repository.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_user_model.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login_repository.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserData>(
      stream: HomeRepository().userData,
      builder: (context, snapshot) {
        UserData? userData = snapshot.data;
        String? userName = userData!.name;
        return Drawer(
          child: Stack(
            fit: StackFit.expand,
            children: [
              ListView(
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
                          "Olá $userName!",
                          style: TextStyles.titledrawer,
                        ),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                  onPressed: () {
                                    Modular.to.pushNamed('/user');
                                  },
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
                            padding: const EdgeInsets.only(left: 12),
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                width: MediaQuery.of(context).size.width * 0.75,
                bottom: 0,
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      thickness: 1.5,
                      indent: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0),
                          ),
                          onPressed: () {
                            LoginRepository().signOut();
                          },
                          child: Text(
                            'Sair',
                            style: TextStyles.roxow400Roboto,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
