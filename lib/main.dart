// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:fluttercatelog/core/store.dart';
import 'package:fluttercatelog/pages/cart_page.dart';
import 'package:fluttercatelog/pages/login_page.dart';
import 'package:fluttercatelog/utils/routes.dart';
import 'package:fluttercatelog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/home_page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.darkTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
