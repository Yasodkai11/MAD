import 'package:flutter/material.dart';

class AppTheme {
  
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
      ),
    ),
  );