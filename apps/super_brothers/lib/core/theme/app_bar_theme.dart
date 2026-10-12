import 'package:flutter/material.dart';

import '../index.dart';

class SuperBrothersAppBarTheme {
  SuperBrothersAppBarTheme._();

  // 🌞 LIGHT THEME
  static AppBarTheme lightAppBarThemeData(BuildContext context) => AppBarTheme(
    backgroundColor: SuperBrothersColors.bg,
    elevation: 0,
    scrolledUnderElevation: 0,
    iconTheme: const IconThemeData(color: SuperBrothersColors.button),
    titleTextStyle: SuperBrothersTextTheme.lightTextTheme(context).titleLarge,
  );

  // 🌚 DARK THEME
  static AppBarTheme darkAppBarThemeData(BuildContext context) => AppBarTheme(
    backgroundColor: SuperBrothersColors.darkBg,
    elevation: 0,
    scrolledUnderElevation: 0,
    iconTheme: const IconThemeData(color: SuperBrothersColors.darkButton),
    titleTextStyle: SuperBrothersTextTheme.darkTextTheme(context).titleLarge,
  );
}