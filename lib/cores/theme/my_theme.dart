import 'package:flutter/material.dart';

class MyTheme {
  //! font sizes
  static const double bigTitle40 = 40;
  static const double normalTitle22 = 22;
  static const double normalSmalTitle20 = 20;
  static const double mediumTitle18 = 18;
  static const double smallTitle16 = 16;
  static const double tinyTitle12 = 12;
  //! Colors
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color blackTransparent = Color.fromARGB(146, 0, 0, 0);
  static const Color orange = Color.fromARGB(255, 255, 99, 71);
  static const Color black = Colors.black;
  static const Color grayTransparent = Color.fromARGB(17, 155, 155, 155);
  static const Color grey = Color.fromARGB(255, 152, 157, 163);
  static const Color yellow = Color.fromARGB(255, 255, 199, 0);
  //! Fonts
  static const String robotFont = 'Robot';
  static TextStyle splashTitle(Color color, double fontSize) => TextStyle(
        fontFamily: robotFont,
        fontWeight: FontWeight.w900,
        fontSize: fontSize,
        color: color,
      );

  static TextStyle titleFont(Color color, double fontSize) => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        fontFamily: robotFont,
        color: color,
      );

  static TextStyle lightTitle(Color color, double fontSize, [bool? lined]) =>
      TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: fontSize,
          fontFamily: robotFont,
          color: color,
          decoration: lined == null ? null : TextDecoration.lineThrough);
  static TextStyle normalText(Color color, double fontSize) => TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: fontSize,
        fontFamily: robotFont,
        color: color,
      );
  static TextStyle linkText(Color color, double fontSize) => TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      fontSize: fontSize,
      fontFamily: robotFont,
      color: color,
      decoration: TextDecoration.underline);
  //! Paddings
  static EdgeInsets paddingAll(double val) => EdgeInsets.all(val);
  static EdgeInsets paddingVertival(double val) =>
      EdgeInsets.symmetric(vertical: val);
  static EdgeInsets paddingHorizontal(double val) =>
      EdgeInsets.symmetric(horizontal: val);

  //! boorder radius

  static BorderRadius radiusAll(double val) =>
      BorderRadius.all(Radius.circular(val));
  static BorderRadius radiusBottom(double val) => BorderRadius.only(
      bottomRight: Radius.circular(val), bottomLeft: Radius.circular(val));
}
