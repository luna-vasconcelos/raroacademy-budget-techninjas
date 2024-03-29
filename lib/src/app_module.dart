import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/app_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_module.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/home/home_module.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login_module.dart';
import 'package:raroacademy_budget_techninjas/src/shared/user/user_module.dart';
import 'modules/login/initial/initial_page_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => AppController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
        ModuleRoute("/initial", module: InitialPageModule()),
        ModuleRoute("/login", module: LoginModule()),
        ModuleRoute("/home", module: HomeModule()),
        ModuleRoute("/user", module: UserModule()),
      ];
}
