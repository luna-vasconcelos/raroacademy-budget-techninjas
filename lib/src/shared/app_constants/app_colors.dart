import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppColors {
  static Color rosa = Color.fromRGBO(245, 72, 127, 1);
  static Color verde = Color.fromRGBO(88, 179, 104, 1);
  static Color roxo = Color.fromRGBO(52, 48, 144, 1);
  static Color ciano = Color(0xFF44C2FD);
  static Color amarelo = Color.fromRGBO(250, 199, 54, 1);
  static Color background = Colors.white;
  static Color greySplash = Color.fromRGBO(253, 253, 253, 1);
  static Color lightgrey = Color.fromRGBO(0, 0, 0, 0.54);
  static Color facebook = Color.fromRGBO(59, 89, 152, 1);
  static Color googleborder = Color.fromRGBO(189, 189, 189, 1);

  static var blueGradient = LinearGradient(
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
