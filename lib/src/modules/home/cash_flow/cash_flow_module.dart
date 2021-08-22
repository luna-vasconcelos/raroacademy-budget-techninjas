import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_types/cash_flow_all_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_types/cash_flow_entries_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_types/cash_flow_exits_page.dart';
import 'package:raroacademy_budget_techninjas/src/modules/home/cash_flow/cash_flow_types/cash_flow_newinput/cash_flow_newexit.dart';
import 'cash_flow_controller.dart';
import 'cash_flow_types/cash_flow_newinput/cash_flow_newentry.dart';

class CashFlowModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => CashFlowController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => CashFlowPage()),
        ChildRoute("/cash_flow_entries",
            child: (_, __) => CashFlowEntriesPage()),
        ChildRoute("/cash_flow_exits", child: (_, __) => CashFlowExitsPage()),
        ChildRoute("/cash_flow_all", child: (_, __) => CashFlowAllPage()),
        ChildRoute("/cash_flow_newentries",
            child: (_, __) => CashFlowNewEntryPage()),
        ChildRoute("/cash_flow_newexits",
            child: (_, __) => CashFlowNewExitPage()),
      ];
}
