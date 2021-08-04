import 'package:flutter_modular/flutter_modular.dart';
import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_repository.dart';
import 'package:raroacademy_budget_techninjas/src/modules/authentication/splash_state.dart';

import '../../app_controller.dart';

class SplashController {
  final SplashRepository repository;
  // final SplashServices services;

  SplashController({required this.repository});

  /// SharedPreferences
  /// SecurityStorage
  /// @observable
  SplashState state = SplashStateEmpty();

  void update(SplashState state) {}

  Future<void> authenticate() async {
    try {
      update(SplashStateLoading());

      ///final response = await SecurityStorage.getLoggedUser();
      final response = Map<String, dynamic>();

      if (response.containsKey(["user"])) {
        //User.fromMap(response["user"])

        update(SplashStateLogged());
      } else {
        Modular.get<AppController>().user = "Alencar";

        update(SplashStateEmpty());
      }
    } catch (e) {
      update(SplashStateError(errorMessage: e.toString()));
    }
  }
}
