import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';

class DropDownButtonMonthsWidget extends StatefulWidget {
  const DropDownButtonMonthsWidget({Key? key}) : super(key: key);

  @override
  _DropDownButtonMonthsWidgetState createState() =>
      _DropDownButtonMonthsWidgetState();
}

class _DropDownButtonMonthsWidgetState
    extends State<DropDownButtonMonthsWidget> {
  final List<DropdownMenuItem<String>> _categories = <DropdownMenuItem<String>>[
    DropdownMenuItem(
      value: "Julho",
      child: Text("JUNHO", style: TextStyles.buttomwhite),
    ),
    DropdownMenuItem(
      value: "Agosto",
      child: Text("AGOSTO", style: TextStyles.buttomwhite),
    ),
  ];
  var _selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26, offset: Offset(0, 6), blurRadius: 10)
        ],
        color: Colors.lightBlue.shade700,
        // gradient: LinearGradient(
        //   begin: Alignment(-1.0, -3.0),
        //   end: Alignment(2.0, 4.0),
        //   stops: [0.2, 0.4],
        //   colors: [
        //     Color(0xFF44C2FD),
        //     Color(0xFF343090),
        //   ],
        // ),
        //color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      width: 110,
      height: 25,
      child: DropdownButtonHideUnderline(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton<String>(
            items: _categories,
            hint: Text(
              'AGOSTO',
              style: TextStyles.buttomwhite,
            ),
            value: _selectedCategory,
            style: TextStyles.buttomwhite,
            dropdownColor: Colors.lightBlue.shade700,
            iconEnabledColor: Colors.white,
            onChanged: (value) {
              setState(() {
                _selectedCategory = value;
              });
            }),
      )),
    );
  }
}
