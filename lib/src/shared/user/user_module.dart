import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/shared/user/user_update_page.dart';

class UserModule extends Module {
  @override
  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => UserUpdatePage()),
      ];
}
