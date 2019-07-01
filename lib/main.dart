import 'package:flutter/material.dart';
import 'dart:math';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Image.asset('assets/logo.png'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.clear), onPressed: null),
          ],
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(30),
          height: double.infinity,
          child: Wrap(
            children: <Widget>[
              Text(
                "Explore",
                style: TextStyle(
                  fontFamily: 'AirbnbCerealBold',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF262A2F),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Color(0xFF4285F4),
                            borderRadius: BorderRadius.circular(48),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  offset: Offset(0, 8),
                                  color: Color(0XFF4285F4),
                                  spreadRadius: -10)
                            ]),
                        child: IconButton(
                          icon: Icon(
                            Icons.local_dining,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Food",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealMedium', fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Color(0xFFEB4335),
                            borderRadius: BorderRadius.circular(48),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  offset: Offset(0, 8),
                                  color: Color(0XFFEB4335),
                                  spreadRadius: -10)
                            ]),
                        child: IconButton(
                          icon: Icon(
                            Icons.local_bar,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Bars",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealMedium', fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          height: 48,
                          decoration: BoxDecoration(
                              color: Color(0xFFFBBC05),
                              borderRadius: BorderRadius.circular(48),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 8,
                                    offset: Offset(0, 8),
                                    color: Color(0XFFFBBC05),
                                    spreadRadius: -10)
                              ]),
                          child: Transform.rotate(
                            angle: 180 * pi / 180,
                            child: IconButton(
                              icon: Icon(
                                Icons.details,
                                color: Colors.white,
                              ),
                              onPressed: null,
                            ),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Historical",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealMedium', fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Color(0xFFF34A853),
                            borderRadius: BorderRadius.circular(48),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  offset: Offset(0, 8),
                                  color: Color(0XFFF34A853),
                                  spreadRadius: -10)
                            ]),
                        child: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "More",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealMedium', fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 28),
                child: Text(
                  "Places by city",
                  style: TextStyle(
                    fontFamily: 'AirbnbCerealMedium',
                    fontSize: 20,
                    color: Color(0xFF262A2F),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 220,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image1.png'),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Container(
                              width: 285,
                              height: 110,
                              margin: EdgeInsets.only(left: 8, bottom: 30),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: FractionalOffset.center,
                                    end: FractionalOffset.bottomCenter,
                                    colors: [
                                      const Color(0XFF000000).withOpacity(.0),
                                      const Color(0XFF000000).withOpacity(0.8),
                                    ],
                                  )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Jerusalem",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealBold',
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "1,243 Place",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCerealBook',
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 220,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image3.png'),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Container(
                              width: 285,
                              height: 110,
                              margin: EdgeInsets.only(left: 8, bottom: 30),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: FractionalOffset.center,
                                    end: FractionalOffset.bottomCenter,
                                    colors: [
                                      const Color(0XFF000000).withOpacity(.0),
                                      const Color(0XFF000000).withOpacity(0.8),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  "Places near you",
                  style: TextStyle(
                    fontFamily: 'AirbnbCerealMedium',
                    fontSize: 20,
                    color: Color(0xFF262A2F),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 220,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image2.png'),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Container(
                                width: 285,
                                height: 110,
                                margin: EdgeInsets.only(left: 8, bottom: 30),
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    gradient: LinearGradient(
                                      begin: FractionalOffset.center,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        const Color(0XFF000000).withOpacity(.0),
                                        const Color(0XFF000000)
                                            .withOpacity(0.8),
                                      ],
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        SmoothStarRating(
                                          allowHalfRating: false,
                                          starCount: 5,
                                          rating: 4,
                                          color: Color(0XFFFBBC05),
                                          size: 14,
                                        ),
                                        Text(
                                          "295 Review",
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCerealBook',
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 220,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image3.png'),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Container(
                              width: 285,
                              height: 110,
                              margin: EdgeInsets.only(left: 8, bottom: 30),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                    begin: FractionalOffset.center,
                                    end: FractionalOffset.bottomCenter,
                                    colors: [
                                      const Color(0XFF000000).withOpacity(.0),
                                      const Color(0XFF000000).withOpacity(0.8),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
