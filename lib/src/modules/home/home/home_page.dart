import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/homepage_cards/general_balancecard1.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/homepage_cards/transactionslistCard.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/drawer_menu/drawer_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/models/transaction_model.dart';
import 'homepage_cards/inputandautoputCard.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _transactions = [
    Transaction(
      id: 't1',
      userId: '',
      title: 'Refeição',
      value: 25.00,
      date: DateTime.now(),
      category: 'Refeição',
      type: 'out',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          // width: MediaQuery.of(context).size.width * 0.98,
          // height: MediaQuery.of(context).size.height * 0.98,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                GeneralBalanceCard(
                    balance:
                        'R\$ 3.000,00'), //vai passar o controller puxando o valor total do usuário do firebase
                GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed('/home/cash_flow');
                  },
                  child: InputAndOutputCard(
                    balance: 'R\$ 3.000,00',
                    expenses: 'R\$ 5.000,00',
                    incomes: 'R\$ 8.000,00',
                    dropdown: Container(), //trocar por dropdownwidget
                  ),
                ),
                TransactionsListCard(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButtonWidget(
                      fontSize: 16,
                      buttonText: '   \u{FF0B}  NOVO CONTROLE  ',
                      width: 183,
                      height: 40,
                      paddingValue: 2,
                      onpressed: () {
                        Modular.to.pushNamed('/user');
                      }),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
