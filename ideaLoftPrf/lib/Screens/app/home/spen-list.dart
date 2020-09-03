import 'package:flutter/material.dart';

import '../../../constants.dart';

class SpendList extends StatelessWidget {
  var transaction = [
    {
      "prod": "H&M",
      "icon": "h&m",
      "date": "17-08-2020",
      "eamount": "28.58",
      "samount": "34.21",
      "ecolor": 0xFFEE5A55,
      "scolor": 0xFF2CC197
    },
    {
      "prod": "Apple Inc. Salary",
      "icon": "apple",
      "date": "14-08-2020",
      "eamount": "28.58",
      "samount": "34.21",
      "ecolor": 0xFFEE5A55,
      "scolor": 0xFF2CC197
    },
    {
      "prod": "Starbuck",
      "icon": "starbucks",
      "date": "13-08-2020",
      "ecolor": 0xFFEE5A55,
      "scolor": 0xFF2CC197,
      "eamount": "28.58",
      "samount": "34.21",
    },
    {
      "prod": "Wallmart",
      "icon": "wallmart",
      "eamount": "28.58",
      "samount": "34.21",
      "date": "17-08-2020",
      "ecolor": 0xFFEE5A55,
      "scolor": 0xFF2CC197
    },
    {
      "prod": "Adobe",
      "icon": "adobe",
      "date": "15-08-2020",
      "eamount": "28.58",
      "samount": "34.21",
      "ecolor": 0xFFEE5A55,
      "scolor": 0xFF2CC197
    },
    {
      "prod": "Spotify",
      "icon": "spotify",
      "date": "13-08-2020",
      "eamount": "28.58",
      "samount": "34.21",
      "ecolor": 0xFFEE5A55,
      "scolor": 0xFF2CC197
    },
    {
      "prod": "Mcdonald",
      "icon": "mc",
      "date": "13-08-2020",
      "eamount": "28.58",
      "samount": "34.21",
      "ecolor": 0xFFEE5A55,
      "scolor": 0xFF2CC197
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(
        top: 530,
        left: 10,
        right: 10,
      ),
      width: MediaQuery.of(context).size.width * .950,
      alignment: Alignment.center,
      child: ListView(
          padding: EdgeInsets.only(bottom: 10),
          scrollDirection: Axis.vertical,
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
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        // width: 401,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * .42,
                              height: 53,
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                width: MediaQuery.of(context).size.width * .41,
                                height: 53,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          "Earn: ",
                                          style: TextStyle(
                                              color: Color(0xFF282B32),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$" + e["eamount"],
                                          style: TextStyle(
                                              color: Color(0xFF2CC197),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          "Spend: ",
                                          style: TextStyle(
                                              color: Color(0xFF9FA7B3),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$" + e["samount"],
                                          style: TextStyle(
                                              color: Color(0xFFEE5A55),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList()),
    );
  }
}
