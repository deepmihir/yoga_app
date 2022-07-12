import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yoga_app/screens/customeAppBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorsTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorsTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    super.initState();
  }

  bool scrollListner(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: NotificationListener(
        onNotification: scrollListner,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(50, 120, 50, 30),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Steak",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "120",
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "kCal",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "120",
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Minutes",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Column(children: [
                                Container(
                                    padding: EdgeInsets.only(bottom: 15),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "Yoga For all",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://thumbs.dreamstime.com/b/horizontal-banner-silhouette-girl-practicing-yoga-meadow-forrest-sun-salutation-healthy-lifestyle-trees-grass-magical-230456149.jpg"),
                                            )),
                                      ),
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black26,
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Yoga For begginers",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 14,
                                        top: 42,
                                        child: Text(
                                          "Last time : 2 Feb",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://cdn.shopify.com/s/files/1/2420/0615/articles/the-best-supplements-for-your-activity-yoga-supplement-superstore-canada_1680x630.jpg?v=1599160354"),
                                            )),
                                      ),
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black26,
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "10 Minutes Yoga",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(bottom: 15),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "Yoga For Students",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),

                                //space----------------------------------
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT9V54GEMAwjdV51eTpYgLsFYStgeRTcS4MA&usqp=CAU"),
                                            )),
                                      ),
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black26,
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Yoga To Increase Concentration",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //space------------------------
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://thumbs.dreamstime.com/b/set-vector-silhouettes-woman-doing-yoga-exercises-set-vector-silhouettes-woman-doing-yoga-exercises-colored-icons-209923119.jpg"),
                                            )),
                                      ),
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black26,
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Yoga for Shoulder and eyes",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  CustomeAppBar(
                      animationController: _animationController,
                      colorsTween: _colorsTween,
                      drawerTween: _drawerTween,
                      homeTween: _homeTween,
                      iconTween: _iconTween,
                      yogaTween: _yogaTween,
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
