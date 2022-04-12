import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  Color? color;
  Color? bgColor;
  double? letterSpacing;
  double? wordSpacing;
  int? maxLines;
  TextOverflow? overflow;
  bool? wrap;
  TextAlign? textAlign;
  List<Shadow>? shadow;
  TextDecoration? decoration;

  CustomText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.color,
    this.bgColor,
    this.letterSpacing,
    this.wordSpacing,
    this.maxLines,
    this.overflow,
    this.wrap,
    this.textAlign,
    this.shadow,
    this.decoration,
  });


  Widget customText_1() {
    return Text(
      "$text",
      style: GoogleFonts.robotoSlab(
        textStyle: TextStyle(
          fontSize: fontSize == null ? 15.0 : fontSize,
          fontWeight: fontWeight == null ? FontWeight.w500 : fontWeight,
          fontStyle: fontStyle == null ? FontStyle.normal : fontStyle,
          color: color,
          backgroundColor: bgColor,
          letterSpacing: letterSpacing == null ? 0.5 : letterSpacing,
          wordSpacing: wordSpacing == null ? 0 : wordSpacing,
          shadows: shadow == null ? [] : shadow,
          decoration: decoration == null ? TextDecoration.none : decoration,
        ),
      ),
      overflow: overflow == null ? TextOverflow.fade : overflow,
      maxLines: maxLines == null ? 1 : maxLines,
      softWrap: wrap == null ? false : true,
      textAlign: textAlign == null ? TextAlign.left : textAlign,
    );
  }

  Widget customText_2() {
    return Text(
      "$text",
      style: GoogleFonts.sourceSansPro(
        textStyle: TextStyle(
          fontSize: fontSize == null ? 15.0 : fontSize,
          fontWeight: fontWeight == null ? FontWeight.w500 : fontWeight,
          fontStyle: fontStyle == null ? FontStyle.normal : fontStyle,
          color: color,
          backgroundColor: bgColor,
          letterSpacing: letterSpacing == null ? 0.5 : letterSpacing,
          wordSpacing: wordSpacing == null ? 0 : wordSpacing,
          shadows: shadow == null ? [] : shadow,
          decoration: decoration == null ? TextDecoration.none : decoration,
        ),
      ),
      overflow: overflow == null ? TextOverflow.fade : overflow,
      maxLines: maxLines == null ? 1 : maxLines,
      softWrap: wrap == null ? false : true,
      textAlign: textAlign == null ? TextAlign.left : textAlign,
    );
  }

  Widget customText_3() {
    return Text(
      "$text",
      style: GoogleFonts.ptSans(
        textStyle: TextStyle(
          fontSize: fontSize == null ? 15.0 : fontSize,
          fontWeight: fontWeight == null ? FontWeight.w500 : fontWeight,
          fontStyle: fontStyle == null ? FontStyle.normal : fontStyle,
          color: color,
          backgroundColor: bgColor,
          letterSpacing: letterSpacing == null ? 0.5 : letterSpacing,
          wordSpacing: wordSpacing == null ? 0 : wordSpacing,
          shadows: shadow == null ? [] : shadow,
          decoration: decoration == null ? TextDecoration.none : decoration,
        ),
      ),
      overflow: overflow == null ? TextOverflow.fade : overflow,
      maxLines: maxLines == null ? 1 : maxLines,
      softWrap: wrap == null ? false : true,
      textAlign: textAlign == null ? TextAlign.left : textAlign,
    );
  }

  Widget customText_4() {
    return Text(
      "$text",
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          fontSize: fontSize == null ? 15.0 : fontSize,
          fontWeight: fontWeight == null ? FontWeight.w500 : fontWeight,
          fontStyle: fontStyle == null ? FontStyle.normal : fontStyle,
          color: color,
          backgroundColor: bgColor,
          letterSpacing: letterSpacing == null ? 0.5 : letterSpacing,
          wordSpacing: wordSpacing == null ? 0 : wordSpacing,
          shadows: shadow == null ? [] : shadow,
          decoration: decoration == null ? TextDecoration.none : decoration,
        ),
      ),
      overflow: overflow == null ? TextOverflow.fade : overflow,
      maxLines: maxLines == null ? 1 : maxLines,
      softWrap: wrap == null ? false : true,
      textAlign: textAlign == null ? TextAlign.left : textAlign,
    );
  }
}
