import 'package:flutter/material.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/app_textformfield_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/drawer_menu/drawer_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/elevated_buttom_widget.dart';

class CashFlowNewExitPage extends StatefulWidget {
  const CashFlowNewExitPage({Key? key}) : super(key: key);

  @override
  _CashFlowNewExitPageState createState() => _CashFlowNewExitPageState();
}

class _CashFlowNewExitPageState extends State<CashFlowNewExitPage> {
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
                          labelText: 'Tipo de saída',
                        ),
                        AppTextFormFieldWidget(
                          labelText: 'Nome da saída',
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
