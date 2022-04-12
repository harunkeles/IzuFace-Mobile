import 'package:flutter/material.dart';

abstract class CustomButton {
  String? text;
  IconData? icon;
  double? iconSize;
  double? height;
  double? width;
  EdgeInsetsGeometry? overPadding;
  EdgeInsetsGeometry? innerPadding;
  Color? iconColor;
  Key? key;
  VoidCallback? onPressed;
  ButtonStyle? style;
  double? vertical;
  double? horizontal;
  Size? size;


  Widget? _customButtonDesign();


  // ValueChanged<bool>? onFocusChange;
  // ValueChanged<bool>? onHover;
  // VoidCallback? onLongPress;
  // bool? autofocus;
  // Clip? clipBehavior;
  // Widget? child;

}
