import 'package:flutter/material.dart';
import '../index.dart';

class SuperBrothersTextTheme {
  SuperBrothersTextTheme._();

  /// 🌞 LIGHT THEME
  static TextTheme lightTextTheme(BuildContext context) => TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Sora',
      fontWeight: FontWeight.w700,
      fontSize: R.value(context: context, phone: 34, tabletPortrait: 38, tabletLandscape: 40, largeTabletPortrait: 40, largeTabletLandscape: 42),
      height: 1.2,
      letterSpacing: -0.03,
      color: SuperBrothersColors.textTitle,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
      fontSize: R.value(context: context, phone: 26, tabletPortrait: 30, tabletLandscape: 32, largeTabletPortrait: 32, largeTabletLandscape: 34),
      height: 1.25,
      letterSpacing: -0.02,
      color: SuperBrothersColors.textTitle,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
      fontSize: R.value(context: context, phone: 20, tabletPortrait: 22, tabletLandscape: 22, largeTabletPortrait: 24, largeTabletLandscape: 24),
      height: 1.27,
      letterSpacing: -0.01,
      color: SuperBrothersColors.textTitle,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
      fontSize: R.value(context: context, phone: 16, tabletPortrait: 18, tabletLandscape: 18, largeTabletPortrait: 20, largeTabletLandscape: 20),
      height: 1.33,
      color: SuperBrothersColors.textTitle,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Hanken Grotesk',
      fontWeight: FontWeight.w400,
      fontSize: R.value(context: context, phone: 14, tabletPortrait: 16, tabletLandscape: 16, largeTabletPortrait: 18, largeTabletLandscape: 18),
      height: 1.5,
      color: SuperBrothersColors.textBody,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Hanken Grotesk',
      fontWeight: FontWeight.w400,
      fontSize: R.value(context: context, phone: 12, tabletPortrait: 14, tabletLandscape: 14, largeTabletPortrait: 16, largeTabletLandscape: 16),
      height: 1.42,
      color: SuperBrothersColors.textSub,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Hanken Grotesk',
      fontWeight: FontWeight.w600,
      fontSize: R.value(context: context, phone: 12, tabletPortrait: 14, tabletLandscape: 14, largeTabletPortrait: 15, largeTabletLandscape: 15),
      height: 1.28,
      letterSpacing: 0.02,
      color: SuperBrothersColors.textTitle,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Hanken Grotesk',
      fontWeight: FontWeight.w700,
      fontSize: R.value(context: context, phone: 9, tabletPortrait: 10, tabletLandscape: 10, largeTabletPortrait: 11, largeTabletLandscape: 11),
      height: 1.4,
      letterSpacing: 0.08,
      color: SuperBrothersColors.textSub,
    ),
  );

  /// 🌚 DARK THEME
  static TextTheme darkTextTheme(BuildContext context) => TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Sora',
      fontWeight: FontWeight.w700,
      fontSize: R.value(context: context, phone: 34, tabletPortrait: 38, tabletLandscape: 40, largeTabletPortrait: 40, largeTabletLandscape: 42),
      height: 1.2,
      letterSpacing: -0.03,
      color: SuperBrothersColors.darkTextTitle,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
      fontSize: R.value(context: context, phone: 26, tabletPortrait: 30, tabletLandscape: 32, largeTabletPortrait: 32, largeTabletLandscape: 34),
      height: 1.25,
      letterSpacing: -0.02,
      color: SuperBrothersColors.darkTextTitle,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
      fontSize: R.value(context: context, phone: 20, tabletPortrait: 22, tabletLandscape: 22, largeTabletPortrait: 24, largeTabletLandscape: 24),
      height: 1.27,
      letterSpacing: -0.01,
      color: SuperBrothersColors.darkTextTitle,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Sora',
      fontWeight: FontWeight.w600,
      fontSize: R.value(context: context, phone: 16, tabletPortrait: 18, tabletLandscape: 18, largeTabletPortrait: 20, largeTabletLandscape: 20),
      height: 1.33,
      color: SuperBrothersColors.darkTextTitle,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Hanken Grotesk',
      fontWeight: FontWeight.w400,
      fontSize: R.value(context: context, phone: 14, tabletPortrait: 16, tabletLandscape: 16, largeTabletPortrait: 18, largeTabletLandscape: 18),
      height: 1.5,
      color: SuperBrothersColors.darkTextBody,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Hanken Grotesk',
      fontWeight: FontWeight.w400,
      fontSize: R.value(context: context, phone: 12, tabletPortrait: 14, tabletLandscape: 14, largeTabletPortrait: 16, largeTabletLandscape: 16),
      height: 1.42,
      color: SuperBrothersColors.darkTextSub,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Hanken Grotesk',
      fontWeight: FontWeight.w600,
      fontSize: R.value(context: context, phone: 12, tabletPortrait: 14, tabletLandscape: 14, largeTabletPortrait: 15, largeTabletLandscape: 15),
      height: 1.28,
      letterSpacing: 0.02,
      color: SuperBrothersColors.darkTextTitle,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Hanken Grotesk',
      fontWeight: FontWeight.w700,
      fontSize: R.value(context: context, phone: 9, tabletPortrait: 10, tabletLandscape: 10, largeTabletPortrait: 11, largeTabletLandscape: 11),
      height: 1.4,
      letterSpacing: 0.08,
      color: SuperBrothersColors.darkTextSub,
    ),
  );
}
