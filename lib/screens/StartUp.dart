import 'dart:ui';

import 'package:flutter/material.dart';

class StartUp extends StatelessWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ElevatedButton(
        autofocus: true,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
          child: Text(
            "Start",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 243,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                title: Text("Yoga"),
                collapseMode: CollapseMode.parallax,
                background: Image.network(
                    "https://binaries.templates.cdn.office.net/support/templates/en-us/lt00556782_quantized.png",
                    fit: BoxFit.cover)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined))
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "26 mins * 16 workouts",
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => Divider(
                            thickness: 2,
                          ),
                      itemBuilder: (context, index) => ListTile(
                            leading: Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Image.network(
                                  "https://media0.giphy.com/media/loG7TbqLitOPTVfg3o/200.webp?cid=ecf05e47a2o5y8e1zzaxh6dfhvcg5eo3o6hihphwu82nus5l&rid=200.webp&ct=g"),
                            ),
                            title: Text(
                              "Yoga $index",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            subtitle: Text(
                              (index % 2 == 0 ? "00:20" : "x20"),
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                      itemCount: 10)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
