import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStates {
  static PageController registrationPageController = PageController();
  static bool isMan = false;
  static bool isWoman = false;
  static bool isDark = false;
  static DateTime dateTime = DateTime.now();
  static bool isLocation = false;
  static Color imageContainerColor;
  static bool isTutorial = false;
  static bool isSelectedAuthorizationBiometrics = false;
  static bool isSelectedAuthorizationPhone = false;
  static bool isSelectedAuthorizationPasscode = false;
  static bool isBiometric = true;
  static String handsAnimation = 'idle';
  static bool isIntroPage;

}
