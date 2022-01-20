// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.color(context.theme.accentColor).make(),
        "Trending Products".text.xl.make(),
      ],
    );
  }
}
