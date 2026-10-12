import 'package:flutter/material.dart';

import '../index.dart';

class SuperBrothersTextSelectionTheme {
  SuperBrothersTextSelectionTheme._();

  // 🌞 LIGHT THEME
  static TextSelectionThemeData lightTextSelectionThemeData = TextSelectionThemeData(
    selectionColor: SuperBrothersColors.textSelection,
    selectionHandleColor: SuperBrothersColors.textSelectionHandle,
    cursorColor: SuperBrothersColors.textCursor,
  );

  // 🌚 DARK THEME
  static TextSelectionThemeData darkTextSelectionThemeData = TextSelectionThemeData(
    selectionColor: SuperBrothersColors.darkTextSelection,
    selectionHandleColor: SuperBrothersColors.darkTextSelectionHandle,
    cursorColor: SuperBrothersColors.darkTextCursor,
  );
}
