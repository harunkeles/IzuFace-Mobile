import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomTextButton.dart';

AppBar baseAppBar_(BuildContext context) => AppBar(
      elevation: 0,
      title: Image.asset('assets/images/logo/light_logo.png', height: 45),
      centerTitle: true,
      leading: CustomTextButton(icon: Icons.menu).customTextButton(context),
    );

SliverAppBar baseAppBar(BuildContext context) => SliverAppBar(
      elevation: 0,
      floating: true,
      centerTitle: true,
      title: Image.asset('assets/images/logo/light_logo.png', height: 45),
      leading: CustomTextButton(
        width: 10,
        height: 10,
        innerPadding: EdgeInsets.all(10),
        icon: Icons.menu,
      ).customTextButton(context),
    );
