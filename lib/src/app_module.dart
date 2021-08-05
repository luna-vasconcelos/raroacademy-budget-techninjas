import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/app_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_module.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home_module.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_module.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/inicial/inicial_page_module.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => AppController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
        ModuleRoute("/inicial", module: InicialPageModule()),
        ModuleRoute("/login", module: LoginModule()),
        ModuleRoute("/createaccount", module: CreateAccountModule()),
        ModuleRoute("/home", module: HomeModule()),
      ];
}