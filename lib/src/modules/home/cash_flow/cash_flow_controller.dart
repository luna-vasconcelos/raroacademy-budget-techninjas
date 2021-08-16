import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'cash_flow_controller.g.dart';

class CashFlowController = _CashFlowControllerBase with _$CashFlowController;

abstract class _CashFlowControllerBase with Store implements Disposable {
  final pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
  }
}
