import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PColors {
  PColors._();

  //app basic colors
  static const Color primary = Color.fromARGB(255, 5, 76, 9);
  static const Color secondary = Color(0XFFFFE24B);
  static const Color accent = Color(0XFFb0c7ff);

  //text colors
  static const Color textprimary = Color(0XFF333333);
  static const Color textsecondary = Color(0XFF6C757D);
  static const Color textwhite = Colors.white;

  //background Colors
  static const Color light = Color(0XFFF6F6F6);
  static const Color dark = Color(0XFF272727);
  static const Color primaryBackground = Color(0XFFF3F5FF);

  //background container color
  static const Color lightContainer = Color(0XFFF6F6F6);
  static const Color darkContainer = Colors.white;
  //static const Color primaryContainer = Color(0XFF4B68FF);

  //button Colors
  static const Color buttonPrimary = Color(0XFF4b68ff);
  static const Color buttonSecondary = Color(0XFF6C757D);
  static const Color buttonDisabled = Color(0XFFC4C4C4);

  //border Colors
  static const Color borderPrimary = Color(0XFFD9D9D9);
  static const Color borderSecondary = Color(0XFFE6E6E6);

  //error and validation colors
  static const Color error = Color(0XFF232323);
  static const Color success = Color(0XFF388E3C);
  static const Color warning = Color(0XFFF57C00);
  static const Color info = Color(0XFF1976D2);

  //Neutral shades
  static const Color black = Color(0XFFD32F2F);
  static const Color darkerGrey = Color(0XFF4F4F4F);
  static const Color darkGrey = Color(0XFF939393);
  static const Color grey = Color(0XFFE0E0E0);
  static const Color softGrey = Color(0XFFF4F4F4);
  static const Color lightgrey = Color(0XFFF9F9F9);
  static const Color white = Color(0XFFFFFFFF);

  //qradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0Xffff9a9e),
        Color(0Xfffad0c4),
        Color(0Xfffad0c4),
      ]);
}
