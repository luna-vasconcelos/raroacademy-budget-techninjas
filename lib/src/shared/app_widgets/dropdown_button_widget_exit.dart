import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class DropDownButtonWidgetExit extends StatefulWidget {
  const DropDownButtonWidgetExit({Key? key}) : super(key: key);

  @override
  _DropDownButtonWidgetExitState createState() =>
      _DropDownButtonWidgetExitState();
}

class _DropDownButtonWidgetExitState extends State<DropDownButtonWidgetExit> {
  final List<DropdownMenuItem<String>> _categories = <DropdownMenuItem<String>>[
    DropdownMenuItem(
        value: "Refeição",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/refeicao.png',
                )),
            SizedBox(width: 8),
            Text(
              "Refeição",
              style: TextStyles.createAccountTextStyleBottomNavigatorNumber,
            ),
          ],
        )),
    DropdownMenuItem(
        value: "Transporte",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/transporte.png',
                )),
            SizedBox(width: 8),
            Text("Transporte",
                style: TextStyles.createAccountTextStyleBottomNavigatorNumber),
          ],
        )),
    DropdownMenuItem(
        value: "Viagem",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/viagem.png',
                )),
            SizedBox(width: 8),
            Text("Viagem",
                style: TextStyles.createAccountTextStyleBottomNavigatorNumber),
          ],
        )),
    DropdownMenuItem(
        value: "Educação",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/educacao.png',
                )),
            SizedBox(width: 8),
            Text("Educação",
                style: TextStyles.createAccountTextStyleBottomNavigatorNumber),
          ],
        )),
    DropdownMenuItem(
        value: "Pagamentos",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/pagamentos.png',
                )),
            SizedBox(width: 8),
            Text("Pagamentos",
                style: TextStyles.createAccountTextStyleBottomNavigatorNumber),
          ],
        )),
    DropdownMenuItem(
        value: "Outros",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/outros.png',
                )),
            SizedBox(width: 8),
            Text("Outros",
                style: TextStyles.createAccountTextStyleBottomNavigatorNumber),
          ],
        )),
  ];
  var _selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 48),
            labelText: "Tipo de Saida",
            labelStyle: TextStyles.black12Roboto400,
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          isDense: true,
          elevation: 4,
          items: _categories,
          value: _selectedCategory,
          hint: Text(
            "Escolha",
            style: TextStyles.blackRoboto16400,
          ),
          onChanged: (value) {
            setState(() {
              _selectedCategory = value;
            });
          }),
    );
  }
}
