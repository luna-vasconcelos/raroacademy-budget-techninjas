import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class TextStyles {
  static TextStyle inputtextMedium = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.15,
    color: Colors.black,
  );

  static TextStyle subtitle3 = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black,
  );

  static TextStyle titleappbar = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: Colors.white,
  );

  static TextStyle cyanw400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 48,
    color: AppColors.ciano,
  );

  static TextStyle roxow500Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: AppColors.roxo,
  );

  static TextStyle blackw400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: Colors.black,
  );
  static TextStyle black14w400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black38,
  );

  static TextStyle createAccountTextStyleBottomNavigatorNumber = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black,
  );
  static TextStyle black14w500Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black38,
  );

  static TextStyle montserrat700white = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w700,
    fontSize: 72,
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

  static TextStyle montserrat400greysplash = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: AppColors.greySplash,
    letterSpacing: 0.8,
  );
}
