import 'package:flutter/material.dart';
import 'package:flutter_task/config/constants/color_constant.dart';

class FontConstant {
  FontConstant._();

  static TextStyle get headingTextStyle => TextStyle(
        color: ColorConstant.secondaryColor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get subHeadingTextStyle => TextStyle(
        color: ColorConstant.secondaryColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get labelTextStyle => TextStyle(
        color: ColorConstant.secondaryColor,
        fontSize: 16,
      );
  static TextStyle get formfieldTextStyle =>
      TextStyle(color: ColorConstant.secondaryColor);
}
