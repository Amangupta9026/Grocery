// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline6: GoogleFonts.montserrat(
          textStyle: TextStyle(
        color: base.headline6?.color,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      )),
      subtitle1: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.subtitle1?.color, fontSize: 18)),
      subtitle2: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: base.subtitle2?.color,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
      bodyText2: GoogleFonts.montserrat(
          textStyle: TextStyle(
        color: base.bodyText2?.color,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      )),
      bodyText1: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.bodyText1?.color, fontSize: 14)),
      button: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: base.button?.color,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
      caption: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.caption?.color, fontSize: 12)),
      headline4: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.headline4?.color, fontSize: 26)),
      headline3: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.headline3?.color, fontSize: 48)),
      headline2: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.headline2?.color, fontSize: 60)),
      headline1: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.headline1?.color, fontSize: 96)),
      headline5: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.headline5?.color, fontSize: 24)),
      overline: GoogleFonts.montserrat(
          textStyle: TextStyle(color: base.overline?.color, fontSize: 10)),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
