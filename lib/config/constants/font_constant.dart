import 'package:flutter/material.dart';
import 'package:flutter_task/config/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class FontConstant {
  FontConstant._();

  static TextStyle get headingTextStyle => GoogleFonts.poppins(
        color: ColorConstant.primaryTextColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get subHeadingTextStyle => GoogleFonts.poppins(
        color: ColorConstant.primaryTextColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get labelTextStyle => GoogleFonts.poppins(
        color: ColorConstant.primaryTextColor,
        fontSize: 16,
      );

  //Button text
  static TextStyle get buttonTextStyle => GoogleFonts.poppins(
        color: ColorConstant.secondaryColor,
        fontSize: 16,
      );
  static TextStyle get formbuttonTextStyle => GoogleFonts.poppins(
        color: ColorConstant.secondartTextColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
  // search text
  static TextStyle get searchTextStyle => GoogleFonts.poppins(
        color: ColorConstant.accentColor.withOpacity(0.1),
        fontSize: 16,
      );
  //card text
  static TextStyle get cardTitle => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get cardPrice => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.green,
        color: ColorConstant.secondartTextColor,
      );
  static TextStyle get cardWeight => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        backgroundColor: ColorConstant.primaryColor,
        color: ColorConstant.secondartTextColor,
      );
}
