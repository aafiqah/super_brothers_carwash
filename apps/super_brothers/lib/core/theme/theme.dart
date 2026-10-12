import 'package:flutter/material.dart';

import '../index.dart';

class SuperBrothersTheme {
  SuperBrothersTheme._();

  // ✅ Light Theme with context
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: SuperBrothersColors.primary,
    scaffoldBackgroundColor: SuperBrothersColors.bg,
    colorScheme: SuperBrothersColorsSchemeTheme.lightColorSchemeThemeData,
    textTheme: SuperBrothersTextTheme.lightTextTheme(context),
    elevatedButtonTheme: SuperBrothersElevatedButtonDecorationTheme.lightElevatedButtonThemeData,
    toggleButtonsTheme: SuperBrothersToggleButtonTheme.lightToggleButtonsThemeData(context),
    inputDecorationTheme: SuperBrothersInputDecorationTheme.lightInputDecorationThemeData(context),
    iconTheme: const IconThemeData(color: SuperBrothersColors.textSub),
    checkboxTheme: SuperBrothersCheckBoxTheme.lightCheckboxThemeData,
    dropdownMenuTheme: SuperBrothersDropDownMenuTheme.lightDropDownMenuThemeData,
    textSelectionTheme: SuperBrothersTextSelectionTheme.lightTextSelectionThemeData,
    appBarTheme: SuperBrothersAppBarTheme.lightAppBarThemeData(context),
  );

  // ✅ Dark Theme with context
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: SuperBrothersColorsSchemeTheme.darkColorSchemeThemeData,
    textTheme: SuperBrothersTextTheme.darkTextTheme(context),
    elevatedButtonTheme: SuperBrothersElevatedButtonDecorationTheme.darkElevatedButtonThemeData,
    toggleButtonsTheme: SuperBrothersToggleButtonTheme.darkToggleButtonsThemeData(context),
    inputDecorationTheme: SuperBrothersInputDecorationTheme.darkInputDecorationThemeData(context),
    iconTheme: const IconThemeData(color: SuperBrothersColors.textSub),
    checkboxTheme: SuperBrothersCheckBoxTheme.darkCheckboxThemeData,
    dropdownMenuTheme: SuperBrothersDropDownMenuTheme.darkDropDownMenuThemeData,
    textSelectionTheme: SuperBrothersTextSelectionTheme.darkTextSelectionThemeData,
    appBarTheme: SuperBrothersAppBarTheme.darkAppBarThemeData(context),
  );
}