import 'package:flutter_modular/flutter_modular.dart';
import 'initial_page.dart';
import 'initial_page_controller.dart';

class InitialPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => InitialPageController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => InitialPage()),
      ];
}
