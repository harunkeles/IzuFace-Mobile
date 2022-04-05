import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/components/Texts/CustomText.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomElevatedButton.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomOutlinedButton.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomTextButton.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(241, 242, 243, 1),
      child: Column(
        children: [
          CustomText(text: 'Bu kısım ile alakalı bir yazı').customText_1(),
          CustomText(text: 'Bu kısım ile alakalı bir yazı').customText_2(),
          CustomText(text: 'Bu kısım ile alakalı bir yazı').customText_3(),
          CustomText(text: 'Bu kısım ile alakalı bir yazı').customText_4(),

          CustomTextButton(icon: Icon(Icons.add_alert_outlined)).customTextButton(context),
          CustomTextButton(text: "Tıkla",).customTextButton(context),
          CustomTextButton(text: "Tıkla",icon: Icon(Icons.add_alert_outlined)).customTextButton(context),

          CustomElevatedButton(icon: Icon(Icons.add_alert_outlined)).customElevatedButton(context),
          CustomElevatedButton(text: "Tıkla",).customElevatedButton(context),
          CustomElevatedButton(text: "Tıkla",icon: Icon(Icons.add_alert_outlined)).customElevatedButton(context),

          CustomOutlinedButton(icon: Icon(Icons.add_alert_outlined)).customOutlinedButton(context),
          CustomOutlinedButton(text: "Tıkla",).customOutlinedButton(context),
          CustomOutlinedButton(text: "Tıkla",icon: Icon(Icons.add_alert_outlined)).customOutlinedButton(context),

        ],
      ),
    );
  }
}
