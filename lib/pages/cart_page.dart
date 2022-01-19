// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttercatelog/widgets/themes.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.make(),
        ),
        backgroundColor: MyTheme.creamColor
        // body:
        );
  }
}
