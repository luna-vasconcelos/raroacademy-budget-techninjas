import 'dart:math';

import 'package:flutter/widgets.dart';

class AppColors {
  static const Color rosa = Color.fromRGBO(245, 72, 127, 1);
  static const Color verde = Color.fromRGBO(88, 179, 104, 1);
  static const Color roxo = Color.fromRGBO(52, 48, 144, 1);
  static const Color ciano = Color(0xFF44C2FD);
  static const Color amarelo = Color.fromRGBO(250, 199, 54, 1);
  static const Color background = Color(0xFFE5E5E5);
  static const Color greySplash = Color.fromRGBO(253, 253, 253, 1);

  static const blueGradient = LinearGradient(
    colors: <Color>[
      ciano,
      roxo,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.7,
    ],
    transform: GradientRotation((-34 * pi) / 180),
  );
}
