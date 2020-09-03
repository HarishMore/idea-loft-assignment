import 'package:flutter/material.dart';
import 'package:ideaLoftPrf/Screens/app/home/home.dart';
import 'package:ideaLoftPrf/Screens/app/home/profile.dart';

class PageViewFllutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
        children: [
          Profile(),
          Home(),
        ],
        controller: PageController(
          // viewportFraction: 0.5,
          initialPage: 0,
        ));
  }
}
