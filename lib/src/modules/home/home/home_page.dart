import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home_repository.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/homepage_cards/general_balancecard1.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/homepage_cards/transactionslistCard.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_user_model.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/drawer_menu/drawer_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/models/transaction_model.dart';
import 'homepage_cards/inputandautoputCard.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final transactions = [
    TransactionModel(
      id: 't1',
      userId: '',
      value: 25.00,
      date: DateTime.now(),
      category: 'Refeição',
      type: 'out',
      color: AppColors.amarelo,
      icon: Icon(Icons.no_meals),
    ),
    TransactionModel(
      id: 't2',
      userId: '',
      value: 57.30,
      date: DateTime.now(),
      category: 'Transporte',
      type: 'out',
      color: AppColors.verde,
      icon: Icon(Icons.bus_alert),
    ),
    TransactionModel(
      id: 't3',
      userId: '',
      value: 316.00,
      date: DateTime.now(),
      category: 'Educação',
      type: 'out',
      color: AppColors.ciano,
      icon: Icon(Icons.book),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        iconColor: Colors.white,
        child: StreamBuilder<UserData>(
          stream: HomeRepository().userData,
          builder: (context, snapshot) {
            UserData? userData = snapshot.data;
            String? userName = userData!.name;
            return Scaffold(
              backgroundColor: Colors.white,
              drawer: DrawerWidget(),
              appBar: AppBar(
                title: Text(
                  'Olá, $userName!',
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
                      TransactionsListCard(transactions),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: ElevatedButtonWidget(
                            fontSize: 16,
                            buttonText: '   \u{FF0B}  NOVO CONTROLE  ',
                            width: 183,
                            height: 40,
                            paddingValue: 2,
                            onpressed: () {
                             // Modular.to.pushNamed('/user');
                            }),
                      )
                    ]),
                  ),
                ),

              ),
            );
          }
        ),
      ),
    );
  }
}
