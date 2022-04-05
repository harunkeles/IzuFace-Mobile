import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/config/theme/theme.dart';

import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';
import 'package:izuface_mobile/modules/home/home2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İzuFace',
      theme: CustomTheme().lightThemeData,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppColors().bloodRed.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Home2(),
      ),
    );
  }
}
