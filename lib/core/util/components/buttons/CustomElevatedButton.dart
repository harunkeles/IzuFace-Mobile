import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/Extension/ContextExtension.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomButton.dart';
import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';

class CustomElevatedButton implements CustomButton {
  @override
  Widget? icon;

  @override
  Key? key;

  @override
  VoidCallback? onPressed;

  @override
  ButtonStyle? style;

  @override
  String? text;

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
              : Container(
                  child: icon!,
                  // width: context.dynamicWidth(0.08),
                  constraints: BoxConstraints(
                      // maxWidth: context.dynamicWidth(0.08),
                      ),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dynamicWidth(0.001),
                  ),
                ),
          text == null
              ? Container()
              : Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dynamicWidth(0.01),
                  ),
                  child: Text('$text'),
                )
        ],
      ),
    );
  }

  CustomElevatedButton({
    this.text,
    this.icon,
    this.key,
    this.style,
  });

  Widget customElevatedButton(BuildContext context) {
    return ElevatedButton(
      key: key == null ? null : key,
      onPressed: onPressed == null ? () {} : onPressed,
      style: style == null ? buttonStyle(context) : style,
      child: _customButtonDesign(context),
    );
  }

  buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      primary: AppColors().bloodRed,
      padding: EdgeInsets.symmetric(
          horizontal: context.dynamicWidth(0.08),
          vertical: context.dynamicHeight(0.015)),
      textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
