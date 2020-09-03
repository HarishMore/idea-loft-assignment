import 'package:flutter/material.dart';
import 'package:ideaLoftPrf/Screens/login/landing_page.dart';
import 'package:ideaLoftPrf/screens/app/home/home.dart';

import 'Screens/app/home/Page-view-fllutter.dart';
import 'Screens/login/login.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Source Sans Pro'),
      home: LandingPage(),
    );
  }
}
