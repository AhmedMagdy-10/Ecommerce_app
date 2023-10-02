import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
    ),
    fontFamily: 'GT Sectra Fine',
    textTheme: TextTheme(
        titleLarge: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        headlineLarge: const TextStyle(
          fontSize: 26,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w500,
          height: 1.5,
          fontSize: 17,
          color: Colors.grey[700],
        ),
        labelLarge: TextStyle(
          color: Colors.grey[800],
        )));

ThemeData themeArabic = ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
    ),
    fontFamily: 'Cairo',
    textTheme: TextTheme(
        titleLarge: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        headlineLarge: const TextStyle(
          fontSize: 26,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w500,
          height: 1.5,
          fontSize: 17,
          color: Colors.grey[700],
        ),
        labelLarge: TextStyle(
          color: Colors.grey[800],
        )));
