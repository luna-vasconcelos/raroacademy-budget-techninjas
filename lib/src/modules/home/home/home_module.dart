import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_module.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home.controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => HomeController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => HomePage()),
        ModuleRoute("/cash_flow", module: CashFlowModule()),
      ];
}
