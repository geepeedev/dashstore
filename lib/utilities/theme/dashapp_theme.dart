import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/theme/custom/appbar_theme.dart';
import 'package:dashstore/utilities/theme/custom/bottom_sheet_theme.dart';
import 'package:dashstore/utilities/theme/custom/text_theme.dart';
import 'package:dashstore/utilities/theme/custom/textfield_theme.dart';
import 'package:flutter/material.dart';

class DashAppTheme {
  const DashAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    brightness: Brightness.light,
    scaffoldBackgroundColor: DashColors.background,
    textTheme: DashTextTheme.lightTextTheme,
    appBarTheme: DashAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: DashBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: DashTextfieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,

    brightness: Brightness.dark,
    scaffoldBackgroundColor: DashColors.neutralDark,
    textTheme: DashTextTheme.darkTextTheme,
    appBarTheme: DashAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: DashBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: DashTextfieldTheme.darkInputDecorationTheme,
  );
}
