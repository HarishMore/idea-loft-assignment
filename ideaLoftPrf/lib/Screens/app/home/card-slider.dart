import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CardSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> steps = [
      _step0(),
      _step1(),
      _step2(),
    ];
    return Container(
      // top: true,
      // bottom: true,
      // height: 100,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return steps[index];
        },
        loop: false,
        itemCount: steps.length,
        viewportFraction: 0.88,
        // control: new SwiperControl(),
      ),
    );
  }

  Widget _step0() {
    return Container(
      // height: 300,
      margin: EdgeInsets.only(top: 400),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            // margin: EdgeInsets.fromLTRB(54, 0, 30, 0),
            height: 94,
            width: 299,
            // color: Colors.white,
            // padding: EdgeInsets.fromLTRB(20, 14, 19, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(24, 14, 19, 0),
                  child: Text(
                    "Macbook Pro",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 14, 19, 0),
                  // alignment: Alignment.center,
                  // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  // margin: EdgeInsets.fromLTRB(60, 40, 19, 36),
                  child: new LinearPercentIndicator(
                    width: 260.0,
                    lineHeight: 10.0,
                    percent: 0.5,
                    backgroundColor: Colors.grey,
                    progressColor: Color(0xFF2CC197),
                  ),
                ),
                Container(
                  width: 240,
                  margin: EdgeInsets.fromLTRB(20, 8, 19, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "761 of 900",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9FA7B3),
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "76% completed",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9FA7B3),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _step1() {
    return Container(
      // height: 300,
      margin: EdgeInsets.only(top: 400),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            // margin: EdgeInsets.fromLTRB(54, 0, 30, 0),
            height: 94,
            width: 299,
            // color: Colors.white,
            // padding: EdgeInsets.fromLTRB(20, 14, 19, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(24, 14, 19, 0),
                  child: Text(
                    "Macbook Pro",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 14, 19, 0),
                  // alignment: Alignment.center,
                  // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  // margin: EdgeInsets.fromLTRB(60, 40, 19, 36),
                  child: new LinearPercentIndicator(
                    width: 260.0,
                    lineHeight: 10.0,
                    percent: 0.5,
                    backgroundColor: Colors.grey,
                    progressColor: Color(0xFF2CC197),
                  ),
                ),
                Container(
                  width: 240,
                  margin: EdgeInsets.fromLTRB(20, 8, 19, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "761 of 900",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9FA7B3),
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "76% completed",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9FA7B3),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _step2() {
    return Container(
      // height: 300,
      margin: EdgeInsets.only(top: 400),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            // margin: EdgeInsets.fromLTRB(100, 0, 30, 0),
            height: 94,
            width: 299,
            // color: Colors.white,
            // padding: EdgeInsets.fromLTRB(20, 14, 19, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(24, 14, 19, 0),
                  child: Text(
                    "Macbook Pro",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 14, 19, 0),
                  // alignment: Alignment.center,
                  // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  // margin: EdgeInsets.fromLTRB(60, 40, 19, 36),
                  child: new LinearPercentIndicator(
                    width: 260.0,
                    lineHeight: 10.0,
                    percent: 0.5,
                    backgroundColor: Colors.grey,
                    progressColor: Color(0xFF2CC197),
                  ),
                ),
                Container(
                  width: 240,
                  margin: EdgeInsets.fromLTRB(20, 8, 19, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "761 of 900",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9FA7B3),
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "76% completed",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9FA7B3),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
