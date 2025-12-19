import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  const Color blossomPink = Color(0xFFFF4D94);
  const Color blossomBg = Color(0xFFFDF5F9);

  return ThemeData(
    useMaterial3: false,
    fontFamily: 'OpenSans',

    scaffoldBackgroundColor: blossomBg,

    colorScheme: const ColorScheme.light(
      primary: blossomPink,
      secondary: blossomPink,
      surface: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: blossomBg,
      elevation: 0,
      foregroundColor: Colors.black87,
      centerTitle: false,
    ),

    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        color: Colors.black87,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black54,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: blossomPink,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 6,
      ),
    ),

    // Optional: input fields style
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(color: Colors.grey),
    ),
  );
}
