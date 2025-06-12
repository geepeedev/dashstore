import 'package:dashstore/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class DashTextfieldTheme {
  const DashTextfieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: DashColors.neutralDark,
    suffixIconColor: DashColors.neutralDark,
    labelStyle: TextStyle().copyWith(
      color: DashColors.neutralDark,
      fontSize: 14,
    ),
    hintStyle: TextStyle().copyWith(
      color: DashColors.neutralDark,
      fontSize: 14,
    ),
    errorStyle: TextStyle().copyWith(
      color: Colors.red,
      fontSize: 14,
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: TextStyle().copyWith(
      color: DashColors.primary,
      fontSize: 14,
    ),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: DashColors.borderPrimary),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: DashColors.primary, width: 2),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: DashColors.borderPrimary),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: DashColors.error, width: 2),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 2, color: DashColors.error),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: DashColors.neutralLight,
    suffixIconColor: DashColors.neutralLight,
    labelStyle: TextStyle().copyWith(
      color: DashColors.neutralLight,
      fontSize: 14,
    ),
    hintStyle: TextStyle().copyWith(
      color: DashColors.neutralLight,
      fontSize: 14,
    ),
    errorStyle: TextStyle().copyWith(
      color: DashColors.error,
      fontSize: 14,
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: TextStyle().copyWith(
      color: DashColors.primary,
      fontSize: 14,
    ),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: DashColors.neutralMedium),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: DashColors.primary, width: 2),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: DashColors.neutralMedium),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: DashColors.error, width: 2),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 2, color: DashColors.validationWarning),
    ),
  );
}
