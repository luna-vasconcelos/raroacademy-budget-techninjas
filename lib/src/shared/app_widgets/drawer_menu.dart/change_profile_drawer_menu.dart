import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';

class ChangeProfileDrawerMenu extends StatefulWidget {
  ChangeProfileDrawerMenu({Key? key}) : super(key: key);

  @override
  _ChangeProfileDrawerMenuState createState() =>
      _ChangeProfileDrawerMenuState();
}

class _ChangeProfileDrawerMenuState extends State<ChangeProfileDrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastro',
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
