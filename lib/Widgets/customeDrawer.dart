import 'package:flutter/material.dart';

class CustomeDrawer extends StatelessWidget {
  const CustomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxgwAYpKkofFdw1jUJGRG6zRbGR1N7c-WNXv-N-XT0r3r97z1m6xv54g_0E39JAuSYL3c&usqp=CAU"))),
        ),
        ListTile(
          title: Text(
            "Restart prograss ",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.restart_alt_sharp),
        ),
        ListTile(
          title: Text(
            "Share with freinds",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.share_outlined),
        ),
        ListTile(
          title: Text(
            "Rate us",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.star_border_outlined),
        ),
        ListTile(
          title: Text(
            "Feedback",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.feedback_outlined),
        ),
        ListTile(
          title: Text(
            "Privacy Policy",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.security_outlined),
        ),
        Divider(
          thickness: 3,
          indent: 40,
          endIndent: 40,
        ),
        Text("Version 1.0.0"),
      ]),
    );
  }
}
