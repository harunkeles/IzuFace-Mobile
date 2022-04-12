import 'package:flutter/material.dart';
import 'package:izuface_mobile/modules/appHome/view/AppHomeView.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: PublishedCardView()
    );
  }
}
