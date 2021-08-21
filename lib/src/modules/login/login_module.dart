import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login/login_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/recovery_password/recovery_password_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login_repository.dart';

import 'create_account/create_account_page.dart';
import 'login/login_page.dart';
import 'recovery_password/recovery_password_page.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => LoginRepository()),
        Bind.lazySingleton(
            (i) => CreateAccountController(repository: i<LoginRepository>())),
        Bind.lazySingleton((i) =>
            RecoveryPasswordController(repository: i<LoginRepository>())),
        Bind.singleton(
            (i) => LoginController(repository: i<LoginRepository>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => LoginPage()),
        ChildRoute("/create_account", child: (_, __) => CreateAccountPage()),
        ChildRoute("/recovery_password",
            child: (_, __) => RecoveryPasswordPage()),
      ];
}
