import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_succes_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/initial/initial_page_module.dart';

class CreateAccountModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => CreateAccountController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => CreateAccountPage(),
        ),
        ChildRoute(
          "/onboard",
          child: (_, args) => CreateAccountSuccessPage(),
        ),
        ModuleRoute("/initialModule", module: InitialPageModule()),
      ];
}
