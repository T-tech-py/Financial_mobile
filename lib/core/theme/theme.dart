import 'package:finance_mobile/core/constans/colors.dart';
import 'package:flutter/material.dart';

customTheme() {
  return ThemeData().copyWith(
    primaryColor: white,
  );
}

extension CustomThemeContext on BuildContext {
  ThemeData get themeData => ThemeData(
        brightness: Brightness.light,
        // primaryColor: primaryColor,
        colorScheme: ColorScheme.light(primary: white),
        //primaryColorLight: primaryColor,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: darkBackgroundColor,
        textTheme: TextTheme().copyWith(),
      );
}
