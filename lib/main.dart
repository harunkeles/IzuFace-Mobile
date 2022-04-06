import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/config/theme/theme.dart';
import 'package:izuface_mobile/core/util/components/appbars/AppBars.dart';
import 'package:izuface_mobile/modules/appHome/screens/AppHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İzuFace',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightThemeData,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar(context),
      body: AppHome()
    );
  }
}
