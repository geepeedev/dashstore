import 'package:flutter/material.dart';

class DashAppbarTheme {
  const DashAppbarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    actionsIconTheme: IconThemeData(color: Colors.black),
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    scrolledUnderElevation: 0,
    actionsIconTheme: IconThemeData(color: Colors.white),
    surfaceTintColor: Colors.black,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}
