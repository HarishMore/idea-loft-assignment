import 'package:flutter/material.dart';
import 'package:ideaLoftPrf/Screens/app/home/Page-view-fllutter.dart';
import 'package:ideaLoftPrf/Screens/app/home/home.dart';

import '../../constants.dart';

class Login extends StatelessWidget {
  set() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: [color1, color2],
          ),
        ),
        child: Center(
          child: Container(
            height: 320.0,
            width: 315.0,
            decoration: BoxDecoration(
              // boxShadow: BoxShadow.,
              color: textColor,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 21),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: loginText,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 42, 20, 0),
                  height: 36,
                  width: 275,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(),
                  child: TextField(
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xFF565C64), fontSize: 14),
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      prefixIcon: Image.asset(
                        "images/username.png",
                        alignment: Alignment.center,
                      ),
                      hintText: "Username",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 39, 20, 0),
                  height: 36,
                  width: 275,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(),
                  child: TextField(
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xFF565C64), fontSize: 14),
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      prefixIcon: Image.asset("images/password.png"),
                      hintText: "Password",
                    ),
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 42, 0, 20),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 100,
                    ),
                    color: btnColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageViewFllutter(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
