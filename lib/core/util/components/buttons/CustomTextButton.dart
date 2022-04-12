import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/Extension/ContextExtension.dart';
import 'package:izuface_mobile/core/util/components/Texts/CustomText.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomButton.dart';
import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';
import 'package:izuface_mobile/core/util/components/fonts/CustomFontSize.dart';

class CustomTextButton implements CustomButton {
  @override
  Key? key;

  @override
  IconData? icon;

  @override
  double? iconSize;

  @override
  Color? iconColor;

  @override
  EdgeInsetsGeometry? overPadding;

  @override
  EdgeInsetsGeometry? innerPadding;

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

  CustomTextButton({
    this.text,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.overPadding,
    this.innerPadding,
    this.width,
    this.height,
    this.key,
    this.style,
    this.horizontal,
    this.vertical,
    this.onPressed,
    this.size,
  });

  Widget _customButtonDesign(BuildContext context) {
    return Container(
      padding: innerPadding == null ? EdgeInsets.zero : innerPadding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null
              ? Container()
              : (iconSize != null
                  ? Icon(
                      icon,
                      size: iconSize,
                      color: iconColor != null ? iconColor : AppColors().bloodRed,
                    )
                  : Icon(
                      icon,
                      color: iconColor != null ? iconColor : AppColors().bloodRed,
                    )),
          text == null
              ? Container()
              : Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontal == null
                        ? context.dynamicWidth(0.01)
                        : horizontal!,
                  ),
                  child: CustomText(
                    text: '$text',
                    fontSize: h7(),
                    // color: AppColors().bloodRed,
                    fontWeight: FontWeight.w600,
                  ).customText_2(),
                )
        ],
      ),
    );
  }

  Widget customTextButton(BuildContext context) {
    return Container(
      height: height == null ? 20 : height,
      width: width == null ? 20 : width,
      padding: overPadding == null ? EdgeInsets.zero : overPadding,
      child: FittedBox(
        fit: BoxFit.fill,
        child: TextButton(
          key: key == null ? null : key,
          onPressed: onPressed == null ? () {} : onPressed,
          style: style == null
              ? TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: size == null ? Size.zero : size,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                )
              : style,
          child: _customButtonDesign(context),
        ),
      ),
    );
  }
}
