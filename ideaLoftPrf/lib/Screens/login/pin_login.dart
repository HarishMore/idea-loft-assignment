import 'dart:ffi';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ideaLoftPrf/Screens/login/login.dart';

import '../../components/pin_button.dart';
import '../../constants.dart';

// ignore: must_be_immutable
class PinLogin extends StatefulWidget {
  @override
  PinLoginstate createState() => new PinLoginstate();
}

class PinLoginstate extends State<PinLogin> {
  double pinCount = 0;
  // var _currentPos = 0;
  navigate() {
    if (pinCount < 3) {
      this.setState(() => {pinCount++});
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    }
  }

  var pageLength = 4;

  var second = [
    "4",
    "5",
    "6",
  ];
  var first = ["1", "2", "3"];
  var third = ["7", "8", "9"];
  var last = ["0"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.bottomRight,
          colors: [color1, color2],
        ),
      ),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "Enter your PIN number",
              style: TextStyle(
                color: textColor,
                fontSize: 24,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: new DotsIndicator(
              dotsCount: pageLength,
              position: pinCount,
              decorator: DotsDecorator(
                spacing: EdgeInsets.all(20),
                color: Colors.black, // Inactive color
                activeColor: Color(0xFFFFFFFF),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              30,
              50,
              30,
              0,
            ),
            child: Column(
              children: <Widget>[
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: first
                      .map((e) => Container(
                          margin: EdgeInsets.only(top: 15, right: 5),
                          child: PinButton(e, navigate)))
                      .toList(),
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: second
                      .map((e) => Container(
                          margin: EdgeInsets.only(top: 15),
                          child: PinButton(e, navigate)))
                      .toList(),
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: third
                      .map((e) => Container(
                          margin: EdgeInsets.only(top: 15),
                          child: PinButton(e, navigate)))
                      .toList(),
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: last
                      .map((e) => Container(
                          margin: EdgeInsets.only(top: 15),
                          child: PinButton(e, navigate)))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
