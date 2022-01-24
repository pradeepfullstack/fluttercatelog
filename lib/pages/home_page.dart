// ignore_for_file: avoid_print, unnecessary_null_comparison, prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatelog/core/store.dart';
import 'package:fluttercatelog/models/cart.dart';
import 'package:fluttercatelog/models/catalog.dart';
import 'package:fluttercatelog/utils/routes.dart';
import 'package:fluttercatelog/widgets/home_widgets/catalog_header.dart';
import 'package:fluttercatelog/widgets/home_widgets/catalog_list.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://api.npoint.io/c31db3b6185c948c3f8f";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(Duration(seconds: 2));
    // final catalogJson =
    //     await rootBundle.loadString("assets/files/catalog.json");
    final response = await http.get(Uri.parse(url));
    final catalogJson = response.body;

    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: VxBuilder(
          mutations: {AddMutation, RemoveMutation},
          builder: (context, store, status) {
            return FloatingActionButton(
              onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
              backgroundColor: context.theme.buttonColor,
              child: Icon(
                CupertinoIcons.cart,
                color: Colors.white,
              ),
            ).badge(
                color: Vx.green500,
                size: 22,
                count: _cart.items.length,
                textStyle: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold));
          },
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ]),
          ),
        ));
  }
}
