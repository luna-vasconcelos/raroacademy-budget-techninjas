import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/card_widget.dart';

class CashFlowEntriesPage extends StatefulWidget {
  const CashFlowEntriesPage({Key? key}) : super(key: key);

  @override
  _CashFlowEntriesPageState createState() => _CashFlowEntriesPageState();
}

class _CashFlowEntriesPageState extends State<CashFlowEntriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardWidget(
          content: Column(
            children: [
              Text("Listview builder"),
              Text("Entrada"),
            ],
          ),
          buttonText: '\u{FF0B}',
          height: 48,
          width: 48,
          onpressed: () {
            Modular.to.pushNamed('/home/cash_flow/cash_flow_newentries');
          }),
    );
  }
}
