import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/card_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/dropdown_button_widget_exit.dart';

class CashFlowNewExitPage extends StatefulWidget {
  const CashFlowNewExitPage({Key? key}) : super(key: key);

  @override
  _CashFlowNewExitPageState createState() => _CashFlowNewExitPageState();
}

class _CashFlowNewExitPageState extends State<CashFlowNewExitPage> {
  var _selectedDate = DateTime.now();

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          padding: EdgeInsets.only(top: 20, left: 20),
          alignment: Alignment.topLeft,
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
          iconSize: 30,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 95,
          ),
          child: Text(
            'Saída',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
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
        elevation: 0.0,
      ),
      body: CardWidget(
          content: Column(
            children: [
              AppTextFormFieldWidget(
                labelText: 'Valor em R\$',
                labelStyle: TextStyles.blackRoboto16400,
              ),
              DropDownButtonWidgetExit(),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: _showDatePicker,
                  child: Row(
                    children: [
                      Text(
                        '${DateFormat('dd/MM/y').format(_selectedDate)}',
                        style: TextStyles.buttonMedium,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          buttonText: '\u{FF0B}    INSERIR',
          height: 50,
          width: 123,
          onpressed: () {}),
    );
  }
}
