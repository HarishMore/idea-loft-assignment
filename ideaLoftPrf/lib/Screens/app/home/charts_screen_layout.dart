import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ideaLoftPrf/Screens/app/home/swiper.dart';
import 'package:ideaLoftPrf/components/chart.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../constants.dart';

class ChartsScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            // The containers in the background
            new Column(
              children: <Widget>[
                new Container(
                  height: 400,
                  child: Expanded(
                    child: Chart(),
                  ),
                ),
                Container(
                  height: 400,
                  width: 375,
                  padding: EdgeInsets.fromLTRB(20, 200, 19, 0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Macbook Pro",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  // height: MediaQuery.of(context).size.height * .37,
                  color: Colors.white,
                )
              ],
            ),
            // The card widget with top padding,
            // incase if you wanted bottom padding to work,
            // set the `alignment` of container to Alignment.bottomCenter
            new Container(
              alignment: Alignment.topCenter,
              // padding: new EdgeInsets.only(top: 330, right: 38.0, left: 38.0),
              child: new Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  color: Colors.amber,
                  // elevation: 4.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        margin: EdgeInsets.fromLTRB(60, 40, 19, 36),
                        child: new LinearPercentIndicator(
                          width: 260.0,
                          lineHeight: 10.0,
                          percent: 0.5,
                          backgroundColor: Colors.grey,
                          progressColor: Color(0xFF2CC197),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
//    return Column(children: <Widget>[
//      Expanded(
//        child: Chart(),
//      ),
//      Container(height: 40, color: Colors.white),
//      Expanded(
//          child: Container(
//        color: Colors.white,
//      )),
//    ]);
//  }
