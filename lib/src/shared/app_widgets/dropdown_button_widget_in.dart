import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class DropDownButtonWidgetIn extends StatefulWidget {
  const DropDownButtonWidgetIn({Key? key}) : super(key: key);

  @override
  _DropDownButtonWidgetInState createState() => _DropDownButtonWidgetInState();
}

class _DropDownButtonWidgetInState extends State<DropDownButtonWidgetIn> {
  final List<DropdownMenuItem<String>> _categories = <DropdownMenuItem<String>>[
    DropdownMenuItem(
        value: "Pix",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/pix.png',
                )),
            SizedBox(width: 8),
            Text(
              "Pix",
              style: TextStyles.createAccountTextStyleBottomNavigatorNumber,
            ),
          ],
        )),
    DropdownMenuItem(
        value: "Dinheiro",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/dinheiro.png',
                )),
            SizedBox(width: 8),
            Text("Dinheiro",
                style: TextStyles.createAccountTextStyleBottomNavigatorNumber),
          ],
        )),
    DropdownMenuItem(
        value: "Doc",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/doc.png',
                )),
            SizedBox(width: 8),
            Text("Doc",
                style: TextStyles.createAccountTextStyleBottomNavigatorNumber),
          ],
        )),
    DropdownMenuItem(
        value: "Ted",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/ted.png',
                )),
            SizedBox(width: 8),
            Text("Ted",
                style: TextStyles.createAccountTextStyleBottomNavigatorNumber),
          ],
        )),
    DropdownMenuItem(
        value: "Boleto",
        child: Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  'assets/images/boleto.png',
                )),
            SizedBox(width: 8),
            Text("Boleto",
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
            labelText: "Tipo de Entrada",
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
