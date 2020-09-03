import 'package:flutter/material.dart';

import '../../constants.dart';
import 'pin_login.dart';

class LandingPage extends StatelessWidget {
  setColor() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topCenter,
                  colors: [color1, color2]),
            ),
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 120.0),
            child: Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  fontFamily: sourceSansPro,
                  fontStyle: FontStyle.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 200, 0, 0),
            height: double.infinity,
            width: 300,
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: Text(
              'Use your fingerprint to login',
              style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: sourceSansPro,
                  color: textColor,
                  fontStyle: FontStyle.normal),
            ),
          ),
          Center(
            child: Container(
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.only(top: 120),
                child: Image.asset('images/thumb.png')),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 592, 30, 0),
            alignment: Alignment.center,
            height: 70.0,
            width: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              onPressed: () {
                //This is routing Logic
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PinLogin(),
                  ),
                );
              },
              color: textColor,
              padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
              child: Text(
                'PIN login',
                style: TextStyle(
                  color: btnTextColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
