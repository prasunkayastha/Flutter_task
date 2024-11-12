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
  static TextStyle get formfieldTextStyle =>
      const TextStyle(color: ColorConstant.secondaryColor);
}
