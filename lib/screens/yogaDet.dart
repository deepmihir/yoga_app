import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/screens/Break.dart';

class yogaDet extends StatelessWidget {
  const yogaDet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
      create: (context) => TimerModelSec(context),
      child: Scaffold(
        body: Column(children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://media4.giphy.com/media/3NXmRUweROPqcxOD72/200.gif"))),
          ),
          Spacer(),
          Text("Anulom Vilom",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blueAccent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("00", style: TextStyle(color: Colors.white, fontSize: 30)),
                Text(":", style: TextStyle(color: Colors.white, fontSize: 30)),
                Consumer<TimerModelSec>(builder: (context, myModel, child) {
                  return Text(
                    myModel.countdown.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  );
                }),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Break()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 010, horizontal: 25),
                child: Text(
                  "PAUSE",
                  style: TextStyle(fontSize: 30),
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
    );
  }
}

class TimerModelSec with ChangeNotifier {
  TimerModelSec(context) {
    MyTimerSec(context);
  }
  int countdown = 30;
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
