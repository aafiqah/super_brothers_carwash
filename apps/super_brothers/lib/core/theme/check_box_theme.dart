import 'package:flutter/material.dart';
import '../index.dart';

class SuperBrothersCheckBoxTheme {
  SuperBrothersCheckBoxTheme._();

  // 🌞 LIGHT THEME
  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return SuperBrothersColors.checkBoxDisabled;
        }
        if (states.contains(WidgetState.selected)) {
          return SuperBrothersColors.checkBoxActive; 
        }
        return SuperBrothersColors.checkBoxInactive; 
      },
    ),
    checkColor: WidgetStateProperty.all(SuperBrothersColors.textButton), 
    side: const BorderSide(color: SuperBrothersColors.checkBoxBorder, width: 1),
  );

  // 🌚 DARK THEME
  static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return SuperBrothersColors.darkCheckBoxDisabled;
        }
        if (states.contains(WidgetState.selected)) {
          return SuperBrothersColors.darkCheckBoxActive;
        }
        return SuperBrothersColors.darkCheckBoxInactive;
      },
    ),
    checkColor: WidgetStateProperty.all(SuperBrothersColors.textButton),
    side: const BorderSide(color: SuperBrothersColors.darkCheckBoxBorder, width: 1),
  );
}