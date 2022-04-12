import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomButton.dart';
import 'package:izuface_mobile/core/util/Extension/ContextExtension.dart';
import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';

class CustomOutlinedButton implements CustomButton {
  @override
  Key? key;

  @override
  IconData? icon;

  @override
  double? iconSize;

  @override
  Color? iconColor;

  @override
  double? height;

  @override
  double? width;

  @override
  VoidCallback? onPressed;

  @override
  ButtonStyle? style;

  @override
  String? text;

  @override
  double? horizontal;

  @override
  double? vertical;

  @override
  Size? size;

  Widget _customButtonDesign(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(
      //     vertical: context.dynamicHeight(0.01),
      //     horizontal: context.dynamicWidth(0.02)),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   shape: BoxShape.rectangle,
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(8),
      //   ),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Color.fromARGB(255, 167, 167, 167),
      //       spreadRadius: 0,
      //       blurRadius: 7,
      //       offset: Offset(0, 2), // changes position of shadow
      //     ),
      //   ],
      // ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null
              ? Container()
              : Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: vertical == null
                        ? context.dynamicHeight(0.001)
                        : vertical!,
                  ),
                  child: FittedBox(
                    child: Icon(
                      icon,
                      size: iconSize != null ? iconSize : 10,
                    ),
                  ),
                ),
          text == null
              ? Container()
              : Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontal == null
                        ? context.dynamicWidth(0.01)
                        : horizontal!,
                  ),
                  child: Text('$text'),
                )
        ],
      ),
    );
  }

  CustomOutlinedButton({
    this.text,
    this.icon,
    this.key,
    this.style,
  });

  Widget customOutlinedButton(BuildContext context) {
    return OutlinedButton(
      key: key == null ? null : key,
      onPressed: onPressed == null ? () {} : onPressed,
      style: style == null ? buttonStyle(context) : style,
      child: _customButtonDesign(context),
    );
  }

  buttonStyle(BuildContext context) {
    return OutlinedButton.styleFrom(
      side: BorderSide(
        color: AppColors().blackShadow,
        width: 1,
        style: BorderStyle.solid,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: context.dynamicWidth(0.08),
          vertical: context.dynamicHeight(0.015)),
      textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  EdgeInsetsGeometry? innerPadding;

  @override
  EdgeInsetsGeometry? overPadding;
}
