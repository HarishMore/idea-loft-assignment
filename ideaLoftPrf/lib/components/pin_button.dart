import 'package:flutter/material.dart';

import '../constants.dart';

// ignore: must_be_immutable
class PinButton extends StatelessWidget {
  String btntext = "";
  final Function stateHandler;
  Widget widgets;

  PinButton(this.btntext, this.stateHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      child: RaisedButton(
        splashColor: Color.fromRGBO(255, 255, 255, 0.32),
        color: color1,
        padding: EdgeInsets.all(31),
        child: Text(
          this.btntext,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        onPressed: stateHandler,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
