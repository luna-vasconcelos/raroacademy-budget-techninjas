import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';

class CashFlowExitsPage extends StatefulWidget {
  const CashFlowExitsPage({Key? key}) : super(key: key);

  @override
  _CashFlowExitsPageState createState() => _CashFlowExitsPageState();
}

class _CashFlowExitsPageState extends State<CashFlowExitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Saídas'),
          ElevatedButtonWidget(
            buttonText: '+',
            width: 48,
            height: 48,
            onpressed: () {
              Modular.to.pushNamed('/home/cash_flow/cash_flow_newexits');
            },
            fontSize: 20,
          ),
        ],
      ),
    );
  }
}
