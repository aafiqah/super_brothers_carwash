import 'package:flutter/material.dart';
import '../index.dart';

class SuperBrothersToggleButtonTheme {
  SuperBrothersToggleButtonTheme._();

  // 🌞 LIGHT THEME
  static ToggleButtonsThemeData lightToggleButtonsThemeData(BuildContext context) =>
      ToggleButtonsThemeData(
        borderRadius: BorderRadius.circular(13),
        borderWidth: 1,
        borderColor: SuperBrothersColors.toggleActive,
        selectedBorderColor: SuperBrothersColors.toggleActive,
        disabledBorderColor: SuperBrothersColors.toggleInactive,
        fillColor: SuperBrothersColors.toggleActive,
        constraints: BoxConstraints(
          minHeight: R.value(context: context, phone: 23, tabletPortrait: 33, tabletLandscape: 23, largeTabletPortrait: 40, largeTabletLandscape: 50),
          minWidth: R.value(context: context, phone: 45, tabletPortrait: 55, tabletLandscape: 45, largeTabletPortrait: 65, largeTabletLandscape: 75),
        ),
      );

  // 🌚 DARK THEME
  static ToggleButtonsThemeData darkToggleButtonsThemeData(BuildContext context) =>
      ToggleButtonsThemeData(
        borderRadius: BorderRadius.circular(13),
        borderWidth: 1,
        borderColor: SuperBrothersColors.darkToggleActive,
        selectedBorderColor: SuperBrothersColors.darkToggleActive,
        disabledBorderColor: SuperBrothersColors.darkToggleInactive,
        fillColor: SuperBrothersColors.darkToggleActive,
        constraints: BoxConstraints(
          minHeight: R.value(context: context, phone: 23, tabletPortrait: 33 , tabletLandscape: 23, largeTabletPortrait: 40, largeTabletLandscape: 50),
          minWidth: R.value(context: context, phone: 45, tabletPortrait: 55, tabletLandscape: 45, largeTabletPortrait: 65, largeTabletLandscape: 75),
        ),
      );
}