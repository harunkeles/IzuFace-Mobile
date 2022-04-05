import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/Extension/ContextExtension.dart';
import 'package:izuface_mobile/core/util/components/Texts/CustomText.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomButton.dart';
import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';

class CustomTextButton implements CustomButton {
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null
              ? Container()
              : Container(
                  height: 25,
                  child: FittedBox(child: icon!),
                  padding: EdgeInsets.symmetric(
                    vertical: context.dynamicHeight(0.001),
                  ),
                ),
          text == null
              ? Container()
              : Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dynamicWidth(0.01),
                  ),
                  child: CustomText(
                    text: '$text',
                    fontSize: 16,
                    color: AppColors().bloodRed,
                    fontWeight: FontWeight.w600,
                  ).customText_2(),
                )
        ],
      ),
    );
  }

  CustomTextButton({
    this.text,
    this.icon,
    this.key,
    this.style,
  });

  Widget customTextButton(BuildContext context) {
    return TextButton(
      key: key == null ? null : key,
      onPressed: onPressed == null ? () {} : onPressed,
      style: style == null ? null : style,
      child: _customButtonDesign(context),
      // onFocusChange: onFocusChange == null ? null : onFocusChange,
      // onHover: onHover == null ? null : onHover,
      // onLongPress: onLongPress == null ? null : onLongPress,
      // autofocus: autofocus == null ? false : autofocus!,
      // clipBehavior: clipBehavior == null ? Clip.none : clipBehavior!,
    );
  }


}
