import 'package:flutter/material.dart';
import 'package:xogame/xo_styles.dart';

class Xobutton extends StatelessWidget {
  final String symbol;
  const Xobutton({super.key, required this.symbol});

  @override
  Widget build(BuildContext context) {
    Widget image;
    if (symbol == "x" || symbol == "0")
      image = Image.asset(symbol == "x" ? Xoassets.iconX : Xoassets.iconO);
    else {
      image = SizedBox();
    }
    return Expanded(child: image);
  }
}
