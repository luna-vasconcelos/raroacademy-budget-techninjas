import 'package:flutter_modular/flutter_modular.dart';

import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_repository.dart';

class SplashModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => SplashRepository()),
        Bind.singleton(
            (i) => SplashController(repository: i<SplashRepository>()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => SplashPage()),
      ];
}
