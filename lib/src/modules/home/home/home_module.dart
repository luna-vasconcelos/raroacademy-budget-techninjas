import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home.controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home_error_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => HomeController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => HomePage()),
      ];
}
