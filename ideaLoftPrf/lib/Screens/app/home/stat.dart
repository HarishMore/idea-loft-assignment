import 'package:flutter/material.dart';
import 'package:ideaLoftPrf/Screens/app/home/spen-list.dart';
import 'package:ideaLoftPrf/components/chart.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../constants.dart';
import 'card-slider.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF6F9FC),
      child: Stack(
        children: <Widget>[
          Container(
            height: 437,
            child: Chart(),
          ),
          CardSlider(),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .695,
              left: 20,
              right: 20,
            ),
            height: 1,
            width: 335,
            decoration: BoxDecoration(color: Color(0xFFDCE6F0)),
          ),
          SpendList()
        ],
      ),
    );
  }
}
