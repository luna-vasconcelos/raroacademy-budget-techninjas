import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_controller.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_steps/create_account_page_step1.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_steps/create_account_page_step2.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_steps/create_account_page_step3.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_steps/create_account_page_step4.dart';

class CreateAccountModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => CreateAccountController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/",
            child: (context, args) => CreateAccountPage(),
            children: [
              ChildRoute('/pageStep1',
                  child: (_, __) => CreateAccountPageViewStep1()),
              ChildRoute('/pageStep2',
                  child: (_, __) => CreateAccountPageviewStep2()),
              ChildRoute('/pageStep3',
                  child: (_, __) => CreateAccountPageviewStep3()),
              ChildRoute('/pageStep4',
                  child: (_, __) => CreateAccountPageviewStep4()),
            ]),
      ];
}
