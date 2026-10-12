import 'package:flutter/material.dart';
import '../index.dart';

class SuperBrothersColorsSchemeTheme {
  SuperBrothersColorsSchemeTheme._();

  // 🌞 LIGHT THEME
  static final ColorScheme lightColorSchemeThemeData = ColorScheme(
    brightness: Brightness.light,
    primary: SuperBrothersColors.button,
    onPrimary: SuperBrothersColors.textButton,
    secondary: SuperBrothersColors.secondary,
    onSecondary: SuperBrothersColors.textTitle,
    surface: SuperBrothersColors.bg,
    onSurface: SuperBrothersColors.textBody,
    error: SuperBrothersColors.error,
    onError: SuperBrothersColors.white,
    outline: SuperBrothersColors.inputBorder,
    shadow: SuperBrothersColors.shadowLight,
    surfaceContainerHighest: SuperBrothersColors.disabledButton,
    inversePrimary: SuperBrothersColors.toggleActive,
    primaryContainer: SuperBrothersColors.inputField,
    secondaryContainer: SuperBrothersColors.dropdownField,
  );

  // 🌚 DARK THEME (Elite High-Precision Cluster Tuning)
  static final ColorScheme darkColorSchemeThemeData = ColorScheme(
    brightness: Brightness.dark,
    primary: SuperBrothersColors.darkButton,
    onPrimary: SuperBrothersColors.darkTextButton,
    secondary: SuperBrothersColors.darkSecondary,
    onSecondary: SuperBrothersColors.darkTextTitle,
    surface: SuperBrothersColors.darkBg,
    onSurface: SuperBrothersColors.darkTextBody,
    error: SuperBrothersColors.darkError,
    onError: SuperBrothersColors.emergencyButton,
    outline: SuperBrothersColors.darkInputBorder,
    shadow: SuperBrothersColors.shadowDark,
    surfaceContainerHighest: SuperBrothersColors.darkInputFillField,
    inversePrimary: SuperBrothersColors.darkToggleActive,
    primaryContainer: SuperBrothersColors.darkInputField,
    secondaryContainer: SuperBrothersColors.darkDropdownField,
  );

  static Color success(Brightness brightness) =>
      brightness == Brightness.light
          ? SuperBrothersColors.successButton
          : SuperBrothersColors.darkSuccessButton;
}
