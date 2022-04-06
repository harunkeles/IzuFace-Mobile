import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';
import 'package:izuface_mobile/core/util/components/fonts/CustomFontSize.dart';

Map<int, Color> color = {
  50: Color(0xfff2f2f2),
  100: Color(0xffe6e6e6),
  200: Color(0xffcccccc),
  300: Color(0xffb3b3b3),
  400: Color(0xff999999),
  500: Color(0xff808080),
  600: Color(0xff666666),
  700: Color(0xff4d4d4d),
  800: Color(0xff333333),
  900: Color(0xff191919)
};

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
  static ThemeData lightThemeData = ThemeData(
    primarySwatch: primaryLightColor,
    brightness: Brightness.light,
    primaryColor: AppColors().bloodRed,
    colorScheme: ColorScheme(
      primary: AppColors().bloodRed,
      secondary: AppColors().bloodRed,
      surface: AppColors().eerieBlack,
      background: AppColors().eerieBlack4,
      error: AppColors().carnelian,
      onPrimary: AppColors().cultured,
      onSecondary: AppColors().richBlack,
      onSurface: AppColors().white,
      onBackground: AppColors().white,
      onError: AppColors().richBlack,
      brightness: Brightness.light,
    ),
    canvasColor: AppColors().eerieBlack3,
    scaffoldBackgroundColor: AppColors().white,
    bottomAppBarColor: AppColors().bloodRed,
    cardColor: AppColors().imperialRed,
    dividerColor: AppColors().lightGray,
    highlightColor: AppColors().bloodRed,
    splashColor: AppColors().rubyRed,
    selectedRowColor: AppColors().cultured,
    unselectedWidgetColor: AppColors().blackShadow,
    disabledColor: AppColors().eerieBlack4,
    toggleableActiveColor: Color(0xff64ffda),
    secondaryHeaderColor: AppColors().eerieBlack4,
    backgroundColor: AppColors().eerieBlack4,
    dialogBackgroundColor: AppColors().white,
    indicatorColor: Color(0xff64ffda),
    hintColor: AppColors().eerieBlack,
    errorColor: AppColors().carnelian,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: AppColors().eerieBlack,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: TextStyle(
        color: AppColors().eerieBlack3,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: TextStyle(
        color: AppColors().eerieBlack3,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: AppColors().imperialRed,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
      isCollapsed: false,
      prefixStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: false,
      fillColor: Color(0x00000000),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().imperialRed,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().eerieBlack2,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().imperialRed,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().lightGray,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().eerieBlack4,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().lightGray,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors().bloodRed,
      opacity: 1,
      size: 24,
    ),
    primaryIconTheme: IconThemeData(
      color: AppColors().bloodRed,
      opacity: 1,
      size: 24,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      onPrimary: AppColors().cultured,
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors().bloodRed,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          AppColors().white,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors().white,
      titleTextStyle: TextStyle(color: AppColors().cultured, fontSize: h10()),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: AppColors().bloodRed,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: h15()),
      titleMedium: TextStyle(fontSize: h10()),
      titleSmall: TextStyle(fontSize: h5()),
    ),
  );

  static ThemeData darkThemeData = ThemeData(
    primarySwatch: primaryDarkColor,
    brightness: Brightness.dark,
    primaryColor: AppColors().eerieBlack,
    colorScheme: ColorScheme(
      primary: AppColors().eerieBlack,
      secondary: AppColors().eerieBlack3,
      surface: AppColors().eerieBlack2,
      background: AppColors().eerieBlack4,
      error: AppColors().carnelian,
      onPrimary: AppColors().cultured,
      onSecondary: AppColors().richBlack,
      onSurface: AppColors().white,
      onBackground: AppColors().white,
      onError: AppColors().richBlack,
      brightness: Brightness.dark,
    ),
    canvasColor: AppColors().eerieBlack3,
    scaffoldBackgroundColor: AppColors().richBlack,
    bottomAppBarColor: AppColors().richBlack,
    cardColor: AppColors().eerieBlack2,
    dividerColor: AppColors().blackShadow,
    highlightColor: AppColors().bloodRed,
    splashColor: AppColors().eerieBlack3,
    selectedRowColor: AppColors().cultured,
    unselectedWidgetColor: AppColors().blackShadow,
    disabledColor: AppColors().eerieBlack4,
    toggleableActiveColor: Color(0xff64ffda),
    secondaryHeaderColor: AppColors().eerieBlack4,
    backgroundColor: AppColors().eerieBlack4,
    dialogBackgroundColor: AppColors().eerieBlack2,
    indicatorColor: Color(0xff64ffda),
    hintColor: AppColors().blackShadow,
    errorColor: AppColors().carnelian,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
      isCollapsed: false,
      prefixStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: TextStyle(
        color: AppColors().cultured,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: false,
      fillColor: Color(0x00000000),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().richBlack,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().richBlack,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().richBlack,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().richBlack,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().richBlack,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors().richBlack,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors().cultured,
      opacity: 1,
      size: 24,
    ),
    primaryIconTheme: IconThemeData(
      color: AppColors().cultured,
      opacity: 1,
      size: 24,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      onPrimary: AppColors().cultured,
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors().cultured,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          AppColors().richBlack,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors().eerieBlack,
      titleTextStyle: TextStyle(color: AppColors().cultured, fontSize: h10()),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: AppColors().cultured,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: h15()),
      titleMedium: TextStyle(fontSize: h10()),
      titleSmall: TextStyle(fontSize: h5()),
    ),
  );
}
