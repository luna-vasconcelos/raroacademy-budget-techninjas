import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_user_model.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/login_repository.dart';
import 'package:mobx/mobx.dart';
part 'create_account_controller.g.dart';

class CreateAccountController = _CreateAccountControllerBase
    with _$CreateAccountController;

abstract class _CreateAccountControllerBase with Store implements Disposable {
  final LoginRepository? repository;
  _CreateAccountControllerBase({this.repository});
  final pageViewController = PageController();
  final nameCreate = TextEditingController();
  final emailCreate = TextEditingController();
  final telefoneCreate = TextEditingController();
  final cpfCreate = TextEditingController();
  final passwordCreate = TextEditingController();
  final passwordCreateConfirmation = TextEditingController();
  bool? policy;

  User globalUser =
      User(uuid: '', name: '', email: '', telephone: '', cpf: '', password: '');

  @override
  void dispose() {
    pageViewController.dispose();
  }
}
