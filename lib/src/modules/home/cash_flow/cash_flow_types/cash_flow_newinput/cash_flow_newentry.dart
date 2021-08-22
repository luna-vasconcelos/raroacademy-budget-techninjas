import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/text_styles.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/card_widget.dart';

class CashFlowNewEntryPage extends StatefulWidget {
  const CashFlowNewEntryPage({Key? key}) : super(key: key);

  @override
  _CashFlowNewEntryPageState createState() => _CashFlowNewEntryPageState();
}

class _CashFlowNewEntryPageState extends State<CashFlowNewEntryPage> {
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
            horizontal: 90,
          ),
          child: Text(
            'Entrada',
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
            ),
            AppTextFormFieldWidget(
              labelText: 'Tipo de entrada',
            ),
            AppTextFormFieldWidget(
              labelText: 'Nome da entrada',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: _showDatePicker,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
        buttonText: 'INSERIR',
      ),
    );
  }
}
