import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_page.dart';
import 'cash_flow_controller.dart';

class CashFlowModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => CashFlowController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => CashFlowPage()),
      ];
}