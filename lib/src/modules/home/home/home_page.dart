import 'package:flutter/material.dart';

import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Olá, José',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        toolbarHeight: 65,
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
      body: Container(
        width: MediaQuery.of(context).size.width * 0.98,
        height: MediaQuery.of(context).size.height * 0.98,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Saldo geral',
                          style: TextStyles.roxow500Roboto,
                        ),
                      ),
                      subtitle: Text(
                        'R\$ 3.000,00',
                        style: TextStyles.blackw400Roboto,
                      ),
                      trailing: Icon(
                        Icons.remove_red_eye,
                        color: AppColors.roxo,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Dia a dia',
                              style: TextStyles.roxow500Roboto,
                            ),
                          ),
                          subtitle: Text(
                            'R\$ 3.000,00',
                            style: TextStyles.blackw400Roboto,
                          ),
                          trailing: Icon(
                            Icons.remove_red_eye,
                            color: AppColors.roxo,
                            size: 28,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Saídas',
                                        style: TextStyles.black14w500Roboto,
                                      ),
                                      Text(
                                        'R\$ 5.000,00',
                                        style: TextStyles.black14w400Roboto,
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 11,
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                    ),
                                    Container(
                                      height: 11,
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          color: AppColors.ciano,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Entradas',
                                        style: TextStyles.black14w500Roboto,
                                      ),
                                      Text(
                                        'R\$ 8.000,00',
                                        style: TextStyles.black14w400Roboto,
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                        height: 11,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1),
                                    Container(
                                      height: 11,
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          color: AppColors.amarelo,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Últimas transações',
                          style: TextStyles.roxow500Roboto,
                        ),
                      ),
                      subtitle: Text(
                        'R\$ 364,00',
                        style: TextStyles.blackw400Roboto,
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: AppColors.roxo,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text('NOVO CONTROLE'),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
