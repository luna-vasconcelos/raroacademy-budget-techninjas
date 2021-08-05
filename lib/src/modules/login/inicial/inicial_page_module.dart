import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/inicial/inicial_page_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/inicial/inicial_page.dart';

class InicialPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => InicialPageController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => InicialPage()),
      ];
}
