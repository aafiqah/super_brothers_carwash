import 'package:flutter/material.dart';
import '../index.dart';

class SuperBrothersDropDownMenuTheme {
  SuperBrothersDropDownMenuTheme._();

  // 🌞 LIGHT THEME
  static DropdownMenuThemeData lightDropDownMenuThemeData = DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: SuperBrothersColors.dropdownField,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1, color: SuperBrothersColors.dropdownBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1, color: SuperBrothersColors.dropdownBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1.5, color: SuperBrothersColors.dropdownBorder),
      ),
    ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(SuperBrothersColors.dropdownField),
      elevation: WidgetStateProperty.all(2),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
    disabledColor: SuperBrothersColors.dropdownDisabled,
  );

  // 🌚 DARK THEME
  static DropdownMenuThemeData darkDropDownMenuThemeData = DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: SuperBrothersColors.darkDropdownField,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1, color: SuperBrothersColors.darkDropdownBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1, color: SuperBrothersColors.darkDropdownBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1.5, color: SuperBrothersColors.darkDropdownBorder),
      ),
    ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(SuperBrothersColors.darkDropdownField),
      elevation: WidgetStateProperty.all(2),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    disabledColor: SuperBrothersColors.darkDropdownDisabled,
  );
}