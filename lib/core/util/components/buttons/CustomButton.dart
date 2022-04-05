import 'package:flutter/material.dart';

abstract class CustomButton {
  String? text;
  Widget? icon;
  Key? key;
  VoidCallback? onPressed;
  ButtonStyle? style;

  Widget? _customButtonDesign();


  // ValueChanged<bool>? onFocusChange;
  // ValueChanged<bool>? onHover;
  // VoidCallback? onLongPress;
  // bool? autofocus;
  // Clip? clipBehavior;
  // Widget? child;

}
