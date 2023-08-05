import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0,
  iconTheme: IconThemeData(color: Colors.black),),

  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade300,
  )
);