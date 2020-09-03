import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ideaLoftPrf/Screens/app/home/swiper.dart';

import '../../../constants.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var transaction = [
    {
      "prod": "H&M",
      "icon": "h&m",
      "date": "17-08-2020",
      "amount": "- \$34.21",
      "color": 0xFFEE5A55,
    },
    {
      "prod": "Apple Inc. Salary",
      "icon": "apple",
      "date": "14-08-2020",
      "amount": "+ \$4 334.21",
      "color": 0xFF2AB785,
    },
    {
      "prod": "Starbuck",
      "icon": "starbucks",
      "date": "13-08-2020",
      "amount": "+\$34.21",
      "color": 0xFF2AB785,
    },
    {
      "prod": "Wallmart",
      "icon": "wallmart",
      "date": "17-08-2020",
      "amount": "+ \$344.21",
      "color": 0xFF2AB785,
    },
    {
      "prod": "Adobe",
      "icon": "adobe",
      "date": "15-08-2020",
      "amount": "- \$344.21",
      "color": 0xFFEE5A55,
    },
    {
      "prod": "Spotify",
      "icon": "spotify",
      "date": "13-08-2020",
      "amount": "- \$344.21",
      "color": 0xFFEE5A55,
    },
    {
      "prod": "Mcdonald",
      "icon": "mc",
      "date": "13-08-2020",
      "amount": "- \$344.21",
      "color": 0xFFEE5A55,
    }
  ];
  var people = [
    {
      "name": "Add New Contact",
      "icon": "addnew",
    },
    {
      "name": "Bernard Erickson",
      "icon": "bernard",
    },
    {
      "name": "Ricardo Joseph",
      "icon": "ricardo",
    },
    {
      "name": "Hareald Robbins",
      "icon": "hareald",
    },
    {
      "name": "Bernard Erickson",
      "icon": "bernard",
    },
    {
      "name": "Ricardo Joseph",
      "icon": "ricardo",
    },
    {
      "name": "Hareald Robbins",
      "icon": "hareald",
    }
  ];
  var items = ["card", "card1"];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2],
              ),
            ),
            height: 300,
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 38,
                  width: MediaQuery.of(context).size.width * .900,
                  margin: EdgeInsets.symmetric(vertical: 39, horizontal: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset("images/Profile.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "Salary account",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text("\$10 234,12",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Image.asset("images/Search.png"),
                    ],
                  ),
                ),
                NewSetPage()
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              children: <Widget>[
                Text(
                  "Send money to",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF9FA7B3),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Color(0xFFF6F9FC)),
            height: 128,
            child: Container(
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: people
                      .map((e) => Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                height: 110,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      'images/' + e['icon'] + '.png',
                                      height: 40,
                                    ),
                                    SizedBox(
                                      width: 50,
                                      child: Text(
                                        e['name'],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF9FA7B3)),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                      .toList()),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Text(
                  "Last Transactions",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF9FA7B3),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF6F9FC),
            ),
            child: Container(
                height: MediaQuery.of(context).size.height * .24,
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: SingleChildScrollView(
                    child: Column(
                  children: transaction
                      .map(
                        (e) => Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                // width: 401,

                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset(
                                        'images/' + e["icon"] + '.png',
                                        height: 35,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .10,
                                      ),
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .24,
                                      height: 50,
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text(
                                            e["prod"],
                                            style: TextStyle(
                                                color: prodFontColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            e["date"],
                                            style: TextStyle(
                                              color: Color(0xFF9FA7B3),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).size.width *
                                          .32,
                                      child: Text(
                                        e["amount"],
                                        style: TextStyle(
                                            color: Color(e["color"]),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).size.width *
                                          .10,
                                      child: Image.asset(
                                        'images/arrow.png',
                                        height: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ))),
          )
        ],
      ),
    );
  }
}
