import 'package:flutter/material.dart';

class AppColors {
  static const black = Color(0XFF222832);
  static const darkblack = Color(0XFF1f232b);
  static const lightblack = Color(0XFF2d333d);
  static const white = Color(0XFFFDFEFE);
  static const blue = Color(0XFFBCD4E3);
  static const darkblue = Color(0XFF170B29);
  static const lightblue = Color(0XFFf1f9ff);
  static const lightblue2 = Color(0XFFd6e8f2);
  static const selectedSexColor = Color(0XFFBCD4E3);
  static const unSelectedSexColor = Color(0XFFF8F8F9);
  static const red = Color(0XFFef3d72);
  static const darkBorder = Color(0XFF1A1C48);
  static final selectedAuthorization = Color(0XFFEAF5FC).withOpacity(0.4);
  static final vkColor = Color(0XFF0066C5);
  static final mainColor = Color(0XFF7F75B3);
  static final LinearGradient maleColorGradient = LinearGradient(
    colors: [
      Color(0xFF503595),
      Color(0xFF405AA8)
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.45,
      0.9942
    ]
  );
  static final LinearGradient femaleColorGradient = LinearGradient(
    colors: [
      Color(0xFFF13195),
      Color(0xFFF75888)
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.45,
      0.9942
    ]
  );
}
