import 'package:dashstore/utilities/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashTextTheme {
  const DashTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.nunito().copyWith(
      color: DashColors.textDark,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.nunito().copyWith(
      color: DashColors.textDark,
      fontSize: 28,
      fontWeight: FontWeight.w800,
    ),
    headlineSmall: GoogleFonts.montserrat().copyWith(
      color: DashColors.textDark,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: GoogleFonts.montserrat().copyWith(
      color: DashColors.textDark,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.montserrat().copyWith(
      color: DashColors.textDark,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.montserrat().copyWith(
      color: DashColors.textDark,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.montserrat().copyWith(
      color: DashColors.textDark,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: GoogleFonts.montserrat().copyWith(
      color: DashColors.textDark,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),

    labelLarge: GoogleFonts.montserrat().copyWith(
      color: DashColors.textDark,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: GoogleFonts.montserrat().copyWith(
      color: DashColors.textDark,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.nunito().copyWith(
      color: DashColors.textLight,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),

    headlineMedium: GoogleFonts.nunito().copyWith(
      color: DashColors.textLight,
      fontSize: 28,
      fontWeight: FontWeight.w800,
    ),
    headlineSmall: GoogleFonts.montserrat().copyWith(
      color: DashColors.textLight,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: GoogleFonts.montserrat().copyWith(
      color: DashColors.textLight,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.montserrat().copyWith(
      color: DashColors.textLight,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.montserrat().copyWith(
      color: DashColors.textLight,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.montserrat().copyWith(
      color: DashColors.textLight,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: GoogleFonts.montserrat().copyWith(
      color: DashColors.textLight,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),

    labelLarge: GoogleFonts.montserrat().copyWith(
      color: DashColors.textLight,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: GoogleFonts.montserrat().copyWith(
      color: DashColors.textLight,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );
}
