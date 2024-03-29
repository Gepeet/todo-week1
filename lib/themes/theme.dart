import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
   brightness: Brightness.light,
   colorScheme: ColorScheme.light(
      primary: Colors.indigo.shade900,
      secondary: Colors.white,
      tertiary: Colors.black,
      primaryContainer: Colors.indigo.shade50,
      onTertiaryContainer: Colors.grey.shade500,
   )
);


ThemeData darkMode= ThemeData(
   brightness: Brightness.dark,
   colorScheme: ColorScheme.dark(
      background: Colors.grey.shade900,
      primary: Colors.grey.shade800,
      secondary: Colors.grey.shade600,
      inversePrimary: Colors.grey.shade300,
   )
);
