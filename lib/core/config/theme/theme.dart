import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';

Map<int, Color> color = {};

final lightColorHex = int.parse(AppColors()
    .bloodRed
    .toString()
    .replaceAll('Color(', '')
    .replaceAll(')', ''));

final darkColorHex = int.parse(AppColors()
    .eerieBlack
    .toString()
    .replaceAll('Color(', '')
    .replaceAll(')', ''));

final MaterialColor primaryLightColor = MaterialColor(lightColorHex, color);
final MaterialColor primaryDarkColor = MaterialColor(darkColorHex, color);

class CustomTheme {
  ThemeData lightThemeData = ThemeData.light().copyWith(
    primaryColor: primaryLightColor,
    appBarTheme: AppBarTheme(
      color: primaryLightColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: AppColors().bloodRed,
      ),
    ),
  );

  ThemeData darkThemeData = ThemeData.dark().copyWith(
    primaryColor: primaryDarkColor,
    appBarTheme: AppBarTheme(
      color: primaryDarkColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.teal,
      ),
    ),
  );
}
