import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/screens/yogaDet.dart';

class rUready extends StatelessWidget {
  const rUready({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel>(
        create: (context) => TimerModel(context),
        child: Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 2 - 100),
              Text(
                "Are you ready?",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 35,
              ),
              Consumer<TimerModel>(
                builder: (context, myModel, child) {
                  return Text(
                    myModel.countdown.toString(),
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  );
                },
              ),
              Spacer(),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Next : Anulom vilom",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    )),
              )
            ],
          ),
        )));
  }
}

class TimerModel with ChangeNotifier {
  TimerModel(context) {
    MyTimer(context);
  }
  int countdown = 5;
  MyTimer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      if (countdown == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => yogaDet()));
      }
      notifyListeners();
    });
  }
}
