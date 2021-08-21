import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login_repository.dart';
import 'package:mobx/mobx.dart';
part 'create_account_controller.g.dart';

class CreateAccountController = _CreateAccountControllerBase
    with _$CreateAccountController;

abstract class _CreateAccountControllerBase with Store implements Disposable {
  final LoginRepository? repository;
  _CreateAccountControllerBase({this.repository});

  final pageViewController = PageController();

  @override
  void dispose() {
    pageViewController.dispose();
  }
}
