import 'package:flutter/material.dart';

import 'app_colors.dart';

class TextStyles {
  static const TextStyle inputtextMedium = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.15,
    color: Colors.black,
  );

  static const TextStyle subtitle3 = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    color: Colors.black,
  );

  static const TextStyle titleappbar = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 24.0,
    color: Colors.white,
  );

  static const TextStyle cyanw400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 48.0,
    color: AppColors.ciano,
  );


  static const TextStyle roxow500Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: AppColors.roxo,
  );

  static const TextStyle blackw400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 24.0,
    color: Colors.black,
  );
  static const TextStyle black14w400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    color: Colors.black38,
  );
  static const TextStyle black14w500Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    color: Colors.black38,
     static const TextStyle montserrat700white = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w700,
    fontSize: 72.0,
    color: Colors.white,
    letterSpacing: -4,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(0, 4),
        blurRadius: 15,
        color: Color.fromARGB(25, 0, 0, 0),
      )
    ],
  );

  static const TextStyle montserrat400greysplash = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 11.0,
    color: AppColors.greySplash,
    letterSpacing: 0.8,
}
