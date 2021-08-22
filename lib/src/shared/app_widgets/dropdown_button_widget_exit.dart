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
                  "assets/icons/saidas/refeição.png",
                )),
            SizedBox(width: 4),
            Text(
              "Refeição",
              style: TextStyles.black14w400Roboto,
            ),
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
                  "assets/icons/saidas/educação.png",
                )),
            SizedBox(width: 4),
            Text("Educação"),
          ],
        ))
  ];
  var _selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: DropdownButtonFormField(
          dropdownColor: Colors.white,
          isExpanded: true,
          isDense: true,
          elevation: 4,
          decoration: InputDecoration(
            labelText: 'Tipo de Saida',
            labelStyle: TextStyles.black14w400Roboto,
          ),
          items: _categories,
          value: _selectedCategory,
          hint: Text("Escolha"),
          onChanged: (value) {
            setState(() {
              _selectedCategory = value;
            });
          }),
    );
  }
}
