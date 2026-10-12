import 'package:flutter/material.dart';
import '../index.dart';

class SuperBrothersInputDecorationTheme {
  SuperBrothersInputDecorationTheme._();

  // 🌞 LIGHT THEME
  static InputDecorationTheme lightInputDecorationThemeData(BuildContext context) =>
      InputDecorationTheme(
        filled: true,
        fillColor: SuperBrothersColors.inputFillField,
        hintStyle: const TextStyle(color: SuperBrothersColors.inputField),
        contentPadding: EdgeInsets.symmetric(
          horizontal: R.value(
            context: context,
            phone: 15,
            tabletPortrait: 18,
            tabletLandscape: 15,
            largeTabletPortrait: 20,
            largeTabletLandscape: 15,
          ),
          vertical: R.value(
            context: context,
            phone: 15,
            tabletPortrait: 18,
            tabletLandscape: 15,
            largeTabletPortrait: 20,
            largeTabletLandscape: 15,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.inputBorder),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.inputDisabledField),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.inputBorder, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.error, width: 2),
        ),
        errorMaxLines: 2,
        suffixIconColor: SuperBrothersColors.inputField,
      );

  // 🌚 DARK THEME
  static InputDecorationTheme darkInputDecorationThemeData(BuildContext context) =>
      InputDecorationTheme(
        filled: true,
        fillColor: SuperBrothersColors.darkInputFillField,
        hintStyle: const TextStyle(color: SuperBrothersColors.darkInputField),
        contentPadding: EdgeInsets.symmetric(
          horizontal: R.value(
            context: context,
            phone: 15,
            tabletPortrait: 18,
            tabletLandscape: 15,
            largeTabletPortrait: 20,
            largeTabletLandscape: 30,
          ),
          vertical: R.value(
            context: context,
            phone: 15,
            tabletPortrait: 18,
            tabletLandscape: 15,
            largeTabletPortrait: 20,
            largeTabletLandscape: 30,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.darkInputBorder),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.darkInputDisabledField),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.darkInputBorder, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.darkError),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: SuperBrothersColors.darkError, width: 2),
        ),
        errorMaxLines: 2,
        suffixIconColor: SuperBrothersColors.darkInputField,
      );
}