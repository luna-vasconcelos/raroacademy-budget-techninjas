import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/drawer_menu/drawer_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';

class CashFlowNewEntryPage extends StatefulWidget {
  const CashFlowNewEntryPage({Key? key}) : super(key: key);

  @override
  _CashFlowNewEntryPageState createState() => _CashFlowNewEntryPageState();
}

class _CashFlowNewEntryPageState extends State<CashFlowNewEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Entrada',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 189,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, -3.0),
              end: Alignment(1.0, 3.0),
              stops: [0.05, 0.4],
              colors: <Color>[
                AppColors.ciano,
                AppColors.roxo,
              ],
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        //leading: DrawerWidget(),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.98,
            height: MediaQuery.of(context).size.height * 0.98,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: Column(
                      children: [
                        AppTextFormFieldWidget(
                          labelText: 'Valor em RS',
                        ),
                        AppTextFormFieldWidget(
                          labelText: 'Tipo de entrada',
                        ),
                        AppTextFormFieldWidget(
                          labelText: 'Nome da entrada',
                        ),
                        AppTextFormFieldWidget(
                          labelText: 'Data',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 574,
            left: 123,
            child: ElevatedButtonWidget(
              buttonText: 'INSERIR',
              width: 123,
              height: 50,
              onpressed: () {},
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
