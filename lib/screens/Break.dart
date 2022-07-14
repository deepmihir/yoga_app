import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Break extends StatelessWidget {
  const Break({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
        create: (context) => TimerModelSec(context),
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.25), BlendMode.dstATop),
                    image: NetworkImage("https://i.gifer.com/Qj2X.gif"))),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Spacer(),
              Text(
                "Break time",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Consumer<TimerModelSec>(builder: (context, myModel, child) {
                return Text(
                  myModel.countdown.toString() + "s",
                  style: TextStyle(fontSize: 55, fontWeight: FontWeight.w500),
                );
              }),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: Text(
                      "SKIP",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Previous",
                          style: TextStyle(fontSize: 16),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text("Next", style: TextStyle(fontSize: 16))),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Next : Anulom vilom",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                  )),
            ]),
          ),
        ));
  }
}

class TimerModelSec with ChangeNotifier {
  TimerModelSec(context) {
    MyTimerSec(context);
  }
  int countdown = 20;
  MyTimerSec(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
      }
    });
  }
}
