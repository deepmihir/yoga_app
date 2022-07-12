import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Yoga App")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [Text("1"), Text("Steak")],
                    ),
                    Column(
                      children: [Text("1"), Text("Steak")],
                    ),
                    Column(
                      children: [Text("1"), Text("Steak")],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Yoga for all"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        color: Colors.blueGrey,
                        height: 125,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        color: Colors.blueGrey,
                        height: 150,
                      ),
                    ),
                    Text("Yoga for all"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        color: Colors.blueGrey,
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        color: Colors.blueGrey,
                        height: 150,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
