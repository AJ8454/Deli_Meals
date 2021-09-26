import 'package:flutter/material.dart';

import 'constant.dart';

class MyThemeData {
  static final darkTheme = ThemeData(
    fontFamily: 'Horizon',
    scaffoldBackgroundColor: kDarkColor,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
    appBarTheme: const AppBarTheme(
        titleTextStyle:
            TextStyle(fontFamily: 'Crispy_Food_DEMO', fontSize: 22)),
  );

  static final lightTheme = ThemeData(
    fontFamily: 'Horizon',
    appBarTheme: const AppBarTheme(
        backgroundColor: kOrangeColor,
        titleTextStyle:
            TextStyle(fontFamily: 'Crispy_Food_DEMO', fontSize: 22)),
    scaffoldBackgroundColor: kLightColor,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Color(0xFFFFF4DF)),
  );
}
