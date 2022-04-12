import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:izuface_mobile/core/config/theme/theme.dart';
import 'package:izuface_mobile/core/util/components/appbars/AppBars.dart';
import 'package:izuface_mobile/modules/appHome/screens/AppHome.dart';
import 'package:izuface_mobile/modules/appHome/viewmodel/AppHomeViewModel.dart';

void main() {
  runApp(MyApp());
  initializeDateFormatting('tr_TR', null);
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

// ignore: must_be_immutable
class Home extends StatelessWidget {
  NormalPostViewModel normalPostViewModel = NormalPostViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          baseAppBar(context),
        ],
        body: AppHome(),
      ),
    );
  }
}
