import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/card_widget.dart';

class CashFlowAllPage extends StatefulWidget {
  const CashFlowAllPage({Key? key}) : super(key: key);

  @override
  _CashFlowAllPageState createState() => _CashFlowAllPageState();
}

class _CashFlowAllPageState extends State<CashFlowAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardWidget(
          content: Column(
            children: [
              Text("Listview builder"),
              Text("todos444"),
            ],
          ),
          buttonText: '\u{FF0B}',
          height: 48,
          width: 48,
          onpressed: () {}),
    );
  }
}
