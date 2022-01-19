// ignore: use_key_in_widget_constructors
// ignore: use_key_in_widget_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://avatars.githubusercontent.com/u/55536475?s=96&v=4";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.purple),
              accountName: Text(
                "Pradeep",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "pradeepkumar82681@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            ),

          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.black,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
