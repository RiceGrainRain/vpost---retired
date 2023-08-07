import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'OpenSans',
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: const Color.fromARGB(255, 22, 22, 22),
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade800,
  )
);
