import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';

class InitialCasfFlowPage extends StatefulWidget {
  const InitialCasfFlowPage({ Key? key }) : super(key: key);

  @override
  _InitialCasfFlowPageState createState() => _InitialCasfFlowPageState();
}

class _InitialCasfFlowPageState extends State<InitialCasfFlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'R 1.104,53',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        toolbarHeight: 165,
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
    );
  }
}