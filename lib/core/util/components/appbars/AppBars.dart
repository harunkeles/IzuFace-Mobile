import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomTextButton.dart';

AppBar baseAppBar(BuildContext context) => AppBar(
  elevation: 0,
  title: Image.asset('assets/images/logo/light_logo.png', height: 45),
  centerTitle: true,
  leading: CustomTextButton(icon: Icon(Icons.menu)).customTextButton(context),
);
