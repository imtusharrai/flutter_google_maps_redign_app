import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class MyDetailPage extends StatefulWidget {
  @override
  _MyDetailPageState createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image2.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24)),
                    gradient: LinearGradient(
                      begin: FractionalOffset.center,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        const Color(0XFF000000).withOpacity(.0),
                        const Color(0XFF000000).withOpacity(0.8),
                      ],
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Paranoi",
                          style: TextStyle(
                              fontFamily: 'AirbnbCerealBold',
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Burger House",
                          style: TextStyle(
                              fontFamily: 'AirbnbCerealBook',
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SmoothStarRating(
                          allowHalfRating: false,
                          starCount: 5,
                          rating: 4,
                          color: Color(0XFFFBBC05),
                          size: 13,
                          spacing: 3.6,
                        ),
                        Text(
                          "295 Review",
                          style: TextStyle(
                              fontFamily: 'AirbnbCerealBook',
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
            top: 285,
            child: Column(
              children: <Widget>[
                Container(
                  width: 340,
                  height: 33,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 8,
                            offset: Offset(0, 0),
                            color: Color(0XFF000000).withOpacity(0.3),
                            spreadRadius: -4)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Color(0XFF34A853),
                            ),
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              "OPEN",
                              style: TextStyle(
                                  fontFamily: 'AirbnbCerealBold',
                                  fontSize: 13,
                                  color: Color(0XFF34A853)),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 16,
                            height: 16,
                            child: Icon(
                              Icons.drive_eta,
                              size: 16,
                            ),
                          ),
                          Container(
                            child: Text(
                              "3 min",
                              style: TextStyle(
                                fontFamily: 'AirbnbCerealBook',
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    width: 340,
                    height: 134,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8,
                              offset: Offset(0, 0),
                              color: Color(0XFF000000).withOpacity(0.3),
                              spreadRadius: -4)
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(75),
                                  color: Color(0XFF4285F4),
                                ),
                                child: Icon(
                                  Icons.directions,
                                  color: Colors.white,
                                  size: 46,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Directions",
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCerealBold',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(75),
                                  color: Color(0XFFFBBC05),
                                ),
                                child: Icon(
                                  Icons.navigation,
                                  color: Colors.white,
                                  size: 46,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Start",
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCerealBold',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(75),
                                  color: Color(0XFF34A853),
                                ),
                                child: Icon(
                                  Icons.local_phone,
                                  color: Colors.white,
                                  size: 46,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Call",
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCerealBold',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                    width: 340,
                    height: 260,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8,
                              offset: Offset(0, 0),
                              color: Color(0XFF000000).withOpacity(0.3),
                              spreadRadius: -4)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 24,
                              height: 24,
                              child: Icon(
                                Icons.info,
                                size: 28,
                                color: Color(0XFF4285F4),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                "Overview",
                                style: TextStyle(
                                    fontFamily: 'AirbnbCerealMedium',
                                    fontSize: 17),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 24,
                              height: 24,
                              child: Icon(
                                Icons.location_on,
                                size: 16,
                                color: Color(0XFF4285F4),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Shmu’el ha-Navi St 114",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealMedium',
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "Jerusalem, Palestine",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealBook',
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 24,
                              height: 24,
                              child: Icon(
                                Icons.access_time,
                                size: 16,
                                color: Color(0XFF4285F4),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Open. Closes Midnight",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealMedium',
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "JChristmas might affect opening hours",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealBook',
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Icon(Icons.keyboard_arrow_down),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 24,
                              height: 24,
                              child: Icon(
                                Icons.local_phone,
                                size: 16,
                                color: Color(0XFF4285F4),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "02-123-2121",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealMedium',
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "052-323-2421",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealBook',
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 24,
                              height: 24,
                              child: Icon(
                                Icons.public,
                                size: 16,
                                color: Color(0XFF4285F4),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "www.paranoi.pa",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealMedium',
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "Starbucks Cafe",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealBook',
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 140,
                              alignment: Alignment.bottomRight,
                              child: Text("MORE",
                                style: TextStyle(
                                  color: Color(0XFF4285F4),
                                fontFamily: 'AirbnbCerealBold',
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),),
                            )

                          ],
                        ),
                      ],
                    ),
                  ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 32,
                              height: 32,
                              margin: EdgeInsets.only(top: 4, right: 16),
                              decoration: BoxDecoration(
                                color: Color(0XFF4285F4),
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
