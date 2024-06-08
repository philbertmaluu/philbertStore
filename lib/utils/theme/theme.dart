import 'package:flutter/material.dart';
import 'package:philbert_store/utils/theme/custome_themes/elevated_button_theme.dart';
import 'package:philbert_store/utils/theme/custome_themes/text_theme.dart';

//importing all theme files
import 'custome_themes/appbar_theme.dart';
import 'custome_themes/button_sheet_theme.dart';
import 'custome_themes/checkbox_theme.dart';
import 'custome_themes/chip_theme.dart';
import 'custome_themes/outlined_button_theme.dart';
import 'custome_themes/text_field_theme.dart';

// NB: that input decoration theme is a textfield theme

class PAppTheme {
  PAppTheme._();
  //--------------- for light theme ------------//
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: PTextTheme.lightTextTheme,
      elevatedButtonTheme: PElevatedButtonTheme.lightElevatedButtonTheme,
      chipTheme: PChipTheme.lightChipTheme,
      appBarTheme: PAppBarTheme.lightAppBArTheme,
      bottomSheetTheme: PBottomSheetTheme.lightButtonSheetTheme,
      checkboxTheme: PCheckboxTheme.lightcheckboxTheme,
      outlinedButtonTheme: POutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: PTextFormFieldTheme.lightInputDecorationTheme);

//--------------- for dark theme ------------//
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: PTextTheme.darktTextTheme,
      elevatedButtonTheme: PElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: PChipTheme.darkChipTheme,
      appBarTheme: PAppBarTheme.darkAppBArTheme,
      bottomSheetTheme: PBottomSheetTheme.darkButtonSheetTheme,
      checkboxTheme: PCheckboxTheme.darkcheckboxTheme,
      outlinedButtonTheme: POutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: PTextFormFieldTheme.darkInputDecorationTheme);
}
