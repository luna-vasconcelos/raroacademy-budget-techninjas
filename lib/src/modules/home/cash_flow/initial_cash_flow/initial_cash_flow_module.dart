import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/initial_cash_flow/initial_cash_flow_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/initial_cash_flow/initial_cash_flow_page.dart';

class CashFlowModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => CashFlowController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => InitialCashFlowPage()),
      ];
}
