import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_types/cash_flow_all_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_types/cash_flow_entries_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_types/cash_flow_exits_page.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_constants/app_colors.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/dropdownbuttom_months_home_widget.dart';
import 'package:raroacademy_budget_techninjas/src/shared/app_widgets/dropdownbutton_months_widget.dart';

class CashFlowPage extends StatefulWidget {
  const CashFlowPage({Key? key}) : super(key: key);

  @override
  _CashFlowPageState createState() => _CashFlowPageState();
}

class _CashFlowPageState
    extends ModularState<CashFlowPage, CashFlowController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Text(
            'R\$ 1.104,53',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        toolbarHeight: 189,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(-1.0, -3.0),
                  end: Alignment(1.0, 3.5),
                  stops: [0.05, 0.4],
                  colors: <Color>[AppColors.ciano, AppColors.roxo])),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          padding: EdgeInsets.only(top: 20, left: 20),
          alignment: Alignment.topLeft,
          onPressed: () {
            Modular.to.navigate('/home');
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: DropDownButtonMonthsWidget(),
              ),
            ],
          ),
        ],
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 36,
              right: 36,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.pageController.jumpTo(
                      0,
                    );
                  },
                  child: Text(
                    'Entradas',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.pageController.jumpToPage(
                      1,
                    );
                  },
                  child: Text(
                    'Saídas',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.pageController.jumpToPage(
                      2,
                    );
                  },
                  child: Text(
                    'Todos',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(45),
        ),
      ),
      body: PageView(
        controller: controller.pageController,
        children: [
          CashFlowEntriesPage(),
          CashFlowExitsPage(),
          CashFlowAllPage(),
        ],
      ),
    );
  }
}
