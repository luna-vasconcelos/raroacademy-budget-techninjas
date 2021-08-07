import 'package:flutter_modular/flutter_modular.dart';
import '../../../app_controller.dart';

class InitialPageController {

  Future<void> login({
    required String email,
  }) async {
    Modular.get<AppController>().user = "user";
  }
}
