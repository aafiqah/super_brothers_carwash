import 'package:flutter/material.dart';
import '../index.dart';

class SuperBrothersElevatedButtonDecorationTheme {
  SuperBrothersElevatedButtonDecorationTheme._();

  // 🌞 LIGHT THEME
  static ElevatedButtonThemeData lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: SuperBrothersColors.button,
      foregroundColor: SuperBrothersColors.textButton,
      disabledBackgroundColor: SuperBrothersColors.disabledButton,
      disabledForegroundColor: SuperBrothersColors.disabledTextButton,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  // 🌚 DARK THEME
  static ElevatedButtonThemeData darkElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: SuperBrothersColors.darkButton,
      foregroundColor: SuperBrothersColors.darkTextButton,
      disabledBackgroundColor: SuperBrothersColors.darkDisabledButton,
      disabledForegroundColor: SuperBrothersColors.darkDisabledTextButton,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}