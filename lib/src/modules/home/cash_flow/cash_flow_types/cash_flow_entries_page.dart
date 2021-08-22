import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';

class CashFlowEntriesPage extends StatefulWidget {
  const CashFlowEntriesPage({Key? key}) : super(key: key);

  @override
  _CashFlowEntriesPageState createState() => _CashFlowEntriesPageState();
}

class _CashFlowEntriesPageState extends State<CashFlowEntriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 0.98,
        height: MediaQuery.of(context).size.height * 0.99,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
            ),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(35),
                child: Column(
                  children: [
                    Row(
                      children: [
                        /*Image.asset(
                          'assets/icons/entradas/pix.png',
                          height: 20,
                          width: 20,
                        ),*/
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Pix - Salário',
                                ),
                              ],
                            ),
                            Text(
                              '02/08/2021',
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 74,
                        ),
                        Text('R\$ 5.000,00'),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text('Total entradas'),
                        SizedBox(
                          width: 75,
                        ),
                        Text('+ R\$ 2.415,00')
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    ElevatedButtonWidget(
                      buttonText: '+',
                      width: 48,
                      height: 48,
                      onpressed: () {
                        Modular.to.pushNamed('/cash_flow/cash_flow_newentry');
                      },
                      fontSize: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
