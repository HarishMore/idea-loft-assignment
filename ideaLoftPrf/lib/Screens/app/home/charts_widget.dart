import 'package:flutter/material.dart';
import 'package:ideaLoftPrf/constants.dart';
import 'package:ideaLoftPrf/screens/app/home/charts_screen_layout.dart';

import 'app_bar_placeholder.dart';

class ChartsScreen extends StatelessWidget {
  final Color color;

  ChartsScreen(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPlaceholder(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "My savings",
                    style: TextStyle(
                        color: Colors.white, fontFamily: sourceSansPro),
                  ),
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ],
          ),
        ),
      ),
      body: ChartsScreenLayout(),
    );
  }
}
