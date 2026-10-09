import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuperBrothersTheme {
  SuperBrothersTheme._();

  // ✅ Light Theme with context
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
  );

  // ✅ Dark Theme with context
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
  );
}