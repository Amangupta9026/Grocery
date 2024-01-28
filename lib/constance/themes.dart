// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      titleLarge: GoogleFonts.montserrat(
          textStyle: TextStyle(
        color: base.titleLarge?.color,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      )),
      titleMedium: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.titleMedium?.color, fontSize: 18)),
      titleSmall: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: base.titleSmall?.color,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
      bodyMedium: GoogleFonts.montserrat(
          textStyle: TextStyle(
        color: base.bodyMedium?.color,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      )),
      bodyLarge: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.bodyLarge?.color, fontSize: 14)),
      labelLarge: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: base.labelLarge?.color,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
      bodySmall: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.bodySmall?.color, fontSize: 12)),
      headlineMedium: GoogleFonts.montserrat(
          textStyle:
              TextStyle(color: base.headlineMedium?.color, fontSize: 26)),
      displaySmall: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.displaySmall?.color, fontSize: 48)),
      displayMedium: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.displayMedium?.color, fontSize: 60)),
      displayLarge: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.displayLarge?.color, fontSize: 96)),
      headlineSmall: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.headlineSmall?.color, fontSize: 24)),
      labelSmall: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.labelSmall?.color, fontSize: 10)),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
